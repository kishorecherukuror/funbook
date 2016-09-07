require 'test_helper'

class CalculaionsControllerTest < ActionController::TestCase
  test "should get evenodd" do
    get :evenodd
    assert_response :success
  end

end
