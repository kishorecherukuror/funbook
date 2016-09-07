require 'test_helper'

class MathematicsControllerTest < ActionController::TestCase
  test "should get evenodd" do
    get :evenodd
    assert_response :success
  end

  test "should get prime" do
    get :prime
    assert_response :success
  end

  test "should get palidrom" do
    get :palidrom
    assert_response :success
  end

end
