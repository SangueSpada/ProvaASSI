require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get users_page" do
    get users_users_page_url
    assert_response :success
  end
end
