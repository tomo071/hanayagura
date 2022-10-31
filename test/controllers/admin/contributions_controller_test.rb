require "test_helper"

class Admin::ContributionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_contributions_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_contributions_show_url
    assert_response :success
  end
end
