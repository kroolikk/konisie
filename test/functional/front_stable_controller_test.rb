require 'test_helper'

class FrontStableControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get infos" do
    get :infos
    assert_response :success
  end

  test "should get offer" do
    get :offer
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get prices" do
    get :prices
    assert_response :success
  end

  test "should get archives" do
    get :archives
    assert_response :success
  end

end
