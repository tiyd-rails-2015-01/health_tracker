require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get home:string" do
    get :home:string
    assert_response :success
  end

end
