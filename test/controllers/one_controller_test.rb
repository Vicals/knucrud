require 'test_helper'

class OneControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get one_index_url
    assert_response :success
  end

  test "should get create" do
    get one_create_url
    assert_response :success
  end

  test "should get new" do
    get one_new_url
    assert_response :success
  end

  test "should get show" do
    get one_show_url
    assert_response :success
  end

  test "should get destroy" do
    get one_destroy_url
    assert_response :success
  end

  test "should get update" do
    get one_update_url
    assert_response :success
  end

  test "should get edit" do
    get one_edit_url
    assert_response :success
  end

end
