class VansController < ApplicationController
  before_action :set_van, only: [:show]

  def index
    @vans = Van.all
    @markers = @vans.geocoded.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude,
        id: van.id
      }
    end
  end

  def show
    @booking = Booking.new

    @review = Review.new
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.create(vans_params)
    @van.user = current_user
    if @van.save!
      redirect_to(van_path(@van))
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_van
    @van = Van.find(params[:id])
  end

  def vans_params
    params.require(:van).permit(:model, :capacity, :description, :price, :photos)
  end
end
