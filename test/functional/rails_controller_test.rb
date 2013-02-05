require 'test_helper'

class RailsControllerTest < ActionController::TestCase
  test "should get generate" do
    get :generate
    assert_response :success
  end

  test "should get scaffold" do
    get :scaffold
    assert_response :success
  end

  test "should get User" do
    get :User
    assert_response :success
  end

  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get email:string" do
    get :email:string
    assert_response :success
  end

end
