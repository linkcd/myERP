require 'test_helper'

class InventoryOperationsControllerTest < ActionController::TestCase
  setup do
    @inventory_operation = inventory_operations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_operations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_operation" do
    assert_difference('InventoryOperation.count') do
      post :create, inventory_operation: @inventory_operation.attributes
    end

    assert_redirected_to inventory_operation_path(assigns(:inventory_operation))
  end

  test "should show inventory_operation" do
    get :show, id: @inventory_operation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_operation
    assert_response :success
  end

  test "should update inventory_operation" do
    put :update, id: @inventory_operation, inventory_operation: @inventory_operation.attributes
    assert_redirected_to inventory_operation_path(assigns(:inventory_operation))
  end

  test "should destroy inventory_operation" do
    assert_difference('InventoryOperation.count', -1) do
      delete :destroy, id: @inventory_operation
    end

    assert_redirected_to inventory_operations_path
  end
end
