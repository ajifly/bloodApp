require 'test_helper'

class InputbloodsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get inputbloods_new_url
    assert_response :success
  end

  test "should get index" do
    get inputbloods_index_url
    assert_response :success
  end

end
