require "test_helper"

class GroceriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get groceries_new_url
    assert_response :success
  end

  test "should get create" do
    get groceries_create_url
    assert_response :success
  end

  test "should get update" do
    get groceries_update_url
    assert_response :success
  end

  test "should get delete" do
    get groceries_delete_url
    assert_response :success
  end

  test "should get index" do
    get groceries_index_url
    assert_response :success
  end

  test "should get edit" do
    get groceries_edit_url
    assert_response :success
  end
end
