require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get decline" do
    get bookings_decline_url
    assert_response :success
  end

end
