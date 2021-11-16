class BookingsController < ApplicationController
  def index
    @bookings = Bookings.all
  end

  def new
    @van = Van.find(params[:van_id])
    @booking = Booking.new
  end

  def accept
    @booking.status = "Accepted !"
  end

  def decline
    @booking.status = "Declined !"
  end
  
  def create
    @van = Van.find(params[:van_id])
    @booking = Booking.new(booking_params)
    @booking.van = @van
    @booking.user = current_user
    @booking.status = "Pending"
    @booking.price_total = @van.price * ((@booking.ends_at - @booking.starts_at).to_i + 1) / (24 * 60 * 60)
    if @booking.save!
      redirect_to(booking_rents_path(@booking))
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
