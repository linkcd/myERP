require 'test_helper'

class LocationPropertiesControllerTest < ActionController::TestCase
  setup do
    @location_property = location_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:location_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location_property" do
    assert_difference('LocationProperty.count') do
      post :create, location_property: @location_property.attributes
    end

    assert_redirected_to location_property_path(assigns(:location_property))
  end

  test "should show location_property" do
    get :show, id: @location_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location_property
    assert_response :success
  end

  test "should update location_property" do
    put :update, id: @location_property, location_property: @location_property.attributes
    assert_redirected_to location_property_path(assigns(:location_property))
  end

  test "should destroy location_property" do
    assert_difference('LocationProperty.count', -1) do
      delete :destroy, id: @location_property
    end

    assert_redirected_to location_properties_path
  end
end
