require 'test_helper'

class StuffsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stuffs_index_url
    assert_response :success
  end

  test "should get show" do
    get stuffs_show_url
    assert_response :success
  end

  test "should get new" do
    get stuffs_new_url
    assert_response :success
  end

  test "should get edit" do
    get stuffs_edit_url
    assert_response :success
  end

end
