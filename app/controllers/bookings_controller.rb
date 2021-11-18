class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.order(starts_at: :desc)
  end

  def new
    @van = Van.find(params[:van_id])
    @booking = Booking.new
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "Accepted"
    @booking.save
    redirect_to rents_index_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "Declined"
    @booking.save
    redirect_to rents_index_path
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "Cancelled"
    @booking.save
    redirect_to bookings_path
  end

  def create
    @van = Van.find(params[:van_id])
    @booking = Booking.new(booking_params)
    @booking.van = @van
    @booking.user = current_user
    @booking.status = "Pending"
    @booking.price_total = @van.price * ((@booking.ends_at - @booking.starts_at).to_i + 1) / (24 * 60 * 60)
    p @booking.price_total
    if @booking.save!
      redirect_to(bookings_path)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
