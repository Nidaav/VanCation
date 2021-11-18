class RentsController < ApplicationController
  def index
    @rentals = current_user.rentals.order(starts_at: :desc)
  end
end
