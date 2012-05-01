require 'test_helper'

class SandwichesControllerTest < ActionController::TestCase
  test "should get order" do
    get :order
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
