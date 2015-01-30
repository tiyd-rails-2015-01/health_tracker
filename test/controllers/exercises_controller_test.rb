require 'test_helper'

class ExercisesControllerTest < ActionController::TestCase
  test "should get exercise" do
    get :exercise
    assert_response :success
  end

end
