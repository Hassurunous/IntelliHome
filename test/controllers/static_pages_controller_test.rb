require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get home_url
    assert_response :success
    assert_select "title", "Home | IntelliHome"
  end

  test "should get login" do
    get login_url
    assert_response :success
    assert_select "title", "Login | IntelliHome"
  end

  test "should get logout" do
    get logout_url
    assert_response :success
    assert_select "title", "Logout | IntelliHome"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "title", "About | IntelliHome"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | IntelliHome"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact Us | IntelliHome"
  end

end
