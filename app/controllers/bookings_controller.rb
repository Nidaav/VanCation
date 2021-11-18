class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.order(starts_at: :desc)
  end

  def new
    @van = Van.find(params[:van_id])
    @booking = Booking.new
  end

  def accept
    @booking.status = "Accepted <i class='fas fa-check'></i>"
  end

  def decline
    @booking.status = "Declined <i class='fas fa-times'></i>"
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
