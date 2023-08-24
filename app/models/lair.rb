class Lair < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: [:name], using: { tsearch: { prefix: true } }

  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations

  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true }

  has_one_attached :photo

  def reserved_dates
    Reservation.where(lair: self).pluck(:start_date, :end_date).map do |start_date, end_date|
      (start_date..end_date).to_a.map { |date| date.strftime("%Y-%m-%d") }
    end.flatten
  end
end
