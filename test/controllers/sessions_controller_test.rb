require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  test "should get login" do
    get login_url
    assert_response :success
    assert_select "title", "Login | IntelliHome"
  end

  # test "should get logout" do
  #   get logout_url
  #   assert_response :success
  #   assert_select "title", "Logout | IntelliHome"
  # end

end
