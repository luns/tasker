require 'test_helper'

class TaskControllerTest < ActionController::TestCase
  test "should get subject:string" do
    get :subject:string
    assert_response :success
  end

  test "should get description:text" do
    get :description:text
    assert_response :success
  end

  test "should get StartDate:date" do
    get :StartDate:date
    assert_response :success
  end

  test "should get EndDate:date" do
    get :EndDate:date
    assert_response :success
  end

  test "should get complete:boolean" do
    get :complete:boolean
    assert_response :success
  end

end
