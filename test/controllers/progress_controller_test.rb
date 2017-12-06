require 'test_helper'

class ProgressControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get progress_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get progress_destroy_url
    assert_response :success
  end

end
