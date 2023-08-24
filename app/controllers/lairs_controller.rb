class LairsController < ApplicationController
  def index
    @lairs = Lair.all
    # @lair = Lair.new
  end

  def new
    @lair = Lair.new
  end

  def create
    @lair = Lair.new(lair_params)
    @lair.user = current_user
    if @lair.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @lair = Lair.find(params[:id])
    @reservation = Reservation.new
  end

  private

  def lair_params
    params.require(:lair).permit(:price, :name, :description, :image)
  end
end
