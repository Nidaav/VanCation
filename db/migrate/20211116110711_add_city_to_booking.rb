class AddCityToBooking < ActiveRecord::Migration[6.0]
  def change
    add_column(:bookings, :city, :string)
  end
end
