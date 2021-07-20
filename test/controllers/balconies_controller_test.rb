require "test_helper"

class BalconiesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get balconies_new_url
    assert_response :success
  end

  test "should get create" do
    get balconies_create_url
    assert_response :success
  end

  test "should get show" do
    get balconies_show_url
    assert_response :success
  end
end
