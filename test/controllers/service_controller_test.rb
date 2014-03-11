require 'test_helper'

class ServiceControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get kine" do
    get :kine
    assert_response :success
  end

  test "should get masaje" do
    get :masaje
    assert_response :success
  end

  test "should get fisico" do
    get :fisico
    assert_response :success
  end

end
