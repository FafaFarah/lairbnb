class Lair < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  has_one_attached :photo

  def reserved_dates
    lair = self
    Reservation.where(lair_id: lair.id).pluck(:start_date, :end_date).map do |start_date, end_date|
      (start_date..end_date).to_a
    end.flatten
  end
end
