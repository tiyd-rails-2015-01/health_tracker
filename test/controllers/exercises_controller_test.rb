require 'test_helper'

class ExercisesControllerTest < ActionController::TestCase

    setup do
      @exercise = exercise(:one)
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:exercise)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create step" do
      assert_difference('Exercise.count') do
        post :create, exercise: { date: @exercise.date, type_of_exercise: @exercise.type_of_exercise, calories_burned: @exercise.calories_burned }
      end

      assert_redirected_to step_path(assigns(:exercise))
    end

    test "should show exercise" do
      get :show, id: @sexercise
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @exercise
      assert_response :success
    end

    test "should update exercise" do
      patch :update, id: @exercise, exercise: { date: @exercise.date, type_of_exercise: @exercise.type_of_exercise, calories_burned: @exercise.calories_burned }
      assert_redirected_to exercise_path(assigns(:exercise))
    end

    test "should destroy exercise" do
      assert_difference('Exercise.count', -1) do
        delete :destroy, id: @exercise
      end

      assert_redirected_to exercise_path
    end
  end
