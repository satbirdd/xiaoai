require 'test_helper'

class ItemPropertiesControllerTest < ActionController::TestCase
  setup do
    @item_property = item_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_property" do
    assert_difference('ItemProperty.count') do
      post :create, item_property: { alias: @item_property.alias, item: @item_property.item, property_id: @item_property.property_id }
    end

    assert_redirected_to item_property_path(assigns(:item_property))
  end

  test "should show item_property" do
    get :show, id: @item_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_property
    assert_response :success
  end

  test "should update item_property" do
    patch :update, id: @item_property, item_property: { alias: @item_property.alias, item: @item_property.item, property_id: @item_property.property_id }
    assert_redirected_to item_property_path(assigns(:item_property))
  end

  test "should destroy item_property" do
    assert_difference('ItemProperty.count', -1) do
      delete :destroy, id: @item_property
    end

    assert_redirected_to item_properties_path
  end
end
