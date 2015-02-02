require 'test_helper'

class JoulesControllerTest < ActionController::TestCase
  setup do
    @joule = joules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joule" do
    assert_difference('Joule.count') do
      post :create, joule: { added_on: @joule.added_on, consumed_joules: @joule.consumed_joules }
    end

    assert_redirected_to joule_path(assigns(:joule))
  end

  test "should show joule" do
    get :show, id: @joule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joule
    assert_response :success
  end

  test "should update joule" do
    patch :update, id: @joule, joule: { added_on: @joule.added_on, consumed_joules: @joule.consumed_joules }
    assert_redirected_to joule_path(assigns(:joule))
  end

  test "should destroy joule" do
    assert_difference('Joule.count', -1) do
      delete :destroy, id: @joule
    end

    assert_redirected_to joules_path
  end
end
