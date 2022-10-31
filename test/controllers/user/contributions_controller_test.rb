require "test_helper"

class User::ContributionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_contributions_new_url
    assert_response :success
  end

  test "should get index" do
    get user_contributions_index_url
    assert_response :success
  end

  test "should get show" do
    get user_contributions_show_url
    assert_response :success
  end

  test "should get edit" do
    get user_contributions_edit_url
    assert_response :success
  end
end
