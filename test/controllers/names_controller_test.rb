require "test_helper"

class NamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get names_index_url
    assert_response :success
  end

  test "should get show" do
    get names_show_url
    assert_response :success
  end

  test "should get new" do
    get names_new_url
    assert_response :success
  end

  test "should get edit" do
    get names_edit_url
    assert_response :success
  end

  test "should get create" do
    get names_create_url
    assert_response :success
  end

  test "should get update" do
    get names_update_url
    assert_response :success
  end

  test "should get destroy" do
    get names_destroy_url
    assert_response :success
  end
end
