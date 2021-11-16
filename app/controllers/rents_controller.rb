class RentsController < ApplicationController
  def
    @bookings = Bookings.all
  end
end
