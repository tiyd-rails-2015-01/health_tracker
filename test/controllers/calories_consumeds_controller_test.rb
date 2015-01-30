require 'test_helper'

class CaloriesConsumedsControllerTest < ActionController::TestCase
  setup do
    @calories_consumed = calories_consumeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calories_consumeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calories_consumed" do
    assert_difference('CaloriesConsumed.count') do
      post :create, calories_consumed: { calories: @calories_consumed.calories, date: @calories_consumed.date }
    end

    assert_redirected_to calories_consumed_path(assigns(:calories_consumed))
  end

  test "should show calories_consumed" do
    get :show, id: @calories_consumed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calories_consumed
    assert_response :success
  end

  test "should update calories_consumed" do
    patch :update, id: @calories_consumed, calories_consumed: { calories: @calories_consumed.calories, date: @calories_consumed.date }
    assert_redirected_to calories_consumed_path(assigns(:calories_consumed))
  end

  test "should destroy calories_consumed" do
    assert_difference('CaloriesConsumed.count', -1) do
      delete :destroy, id: @calories_consumed
    end

    assert_redirected_to calories_consumeds_path
  end
end
