require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get addprogress" do
    get user_addprogress_url
    assert_response :success
  end

end
