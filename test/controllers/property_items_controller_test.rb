require 'test_helper'

class PropertyItemsControllerTest < ActionController::TestCase
  setup do
    @property_item = property_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_item" do
    assert_difference('PropertyItem.count') do
      post :create, property_item: { name: @property_item.name }
    end

    assert_redirected_to property_item_path(assigns(:property_item))
  end

  test "should show property_item" do
    get :show, id: @property_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_item
    assert_response :success
  end

  test "should update property_item" do
    patch :update, id: @property_item, property_item: { name: @property_item.name }
    assert_redirected_to property_item_path(assigns(:property_item))
  end

  test "should destroy property_item" do
    assert_difference('PropertyItem.count', -1) do
      delete :destroy, id: @property_item
    end

    assert_redirected_to property_items_path
  end
end
