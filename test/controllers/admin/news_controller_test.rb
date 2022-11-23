require "test_helper"

class Admin::NewsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_news_edit_url
    assert_response :success
  end
end
