require 'test_helper'

class StartPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get start_pages_home_url
    assert_response :success
  end

end
