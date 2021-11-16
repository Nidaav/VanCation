require 'test_helper'

class VansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vans_index_url
    assert_response :success
  end

end
