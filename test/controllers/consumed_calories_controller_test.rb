require 'test_helper'

class ConsumedCaloriesControllerTest < ActionController::TestCase
  setup do
    @consumed_calory = consumed_calories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumed_calories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consumed_calory" do
    assert_difference('ConsumedCalorie.count') do
      post :create, consumed_calory: { calorie_amount: @consumed_calory.calorie_amount, consumed_on: @consumed_calory.consumed_on, meal_type: @consumed_calory.meal_type }
    end

    assert_redirected_to consumed_calory_path(assigns(:consumed_calory))
  end

  test "should show consumed_calory" do
    get :show, id: @consumed_calory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consumed_calory
    assert_response :success
  end

  test "should update consumed_calory" do
    patch :update, id: @consumed_calory, consumed_calory: { calorie_amount: @consumed_calory.calorie_amount, consumed_on: @consumed_calory.consumed_on, meal_type: @consumed_calory.meal_type }
    assert_redirected_to consumed_calory_path(assigns(:consumed_calory))
  end

  test "should destroy consumed_calory" do
    assert_difference('ConsumedCalorie.count', -1) do
      delete :destroy, id: @consumed_calory
    end

    assert_redirected_to consumed_calories_path
  end
end
