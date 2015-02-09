require 'test_helper'

class LandingControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get step" do
    get :step
    assert_response :success
  end

end
