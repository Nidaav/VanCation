class BookingsController < ApplicationController
  def new
    @van = Van.find(params[:van_id])
    @booking = Booking.new
  end

  def create
    @van = Van.find(params[:van_id])
    @booking = Booking.new(booking_params)
    @booking.van = @van
    @booking.user = current_user
    @booking.status = "pending"
    @booking.price_total = @van.price * ((@booking.ends_at - @booking.starts_at).to_i + 1) / (24 * 60 * 60)
    p @booking.price_total
    if @booking.save!
      redirect_to(van_path(@van))
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
