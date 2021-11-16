require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get accept" do
    get bookings_accept_url
    assert_response :success
  end

end
