require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get calories" do
    get :calories
    assert_response :success
  end

  test "should get exercises" do
    get :exercises
    assert_response :success
  end

  test "should get steps" do
    get :steps
    assert_response :success
  end

  test "should get weights" do
    get :weights
    assert_response :success
  end

end
