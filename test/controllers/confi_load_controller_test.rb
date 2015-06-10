require 'test_helper'

class ConfiLoadControllerTest < ActionController::TestCase
  test "should get Load" do
    get :Load
    assert_response :success
  end

end
