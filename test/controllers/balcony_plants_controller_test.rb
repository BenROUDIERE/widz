require "test_helper"

class BalconyPlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get balcony_plants_show_url
    assert_response :success
  end
end
