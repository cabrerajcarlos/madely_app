require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @base_title = "Madely Application"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | Madely Application"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Madely Application"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Madely Application"
  end

end
