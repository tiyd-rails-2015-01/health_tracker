require 'test_helper'

class CalorieControllerTest < ActionController::TestCase
  test "should get calorie" do
    get :calorie
    assert_response :success
  end

end
