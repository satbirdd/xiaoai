require 'test_helper'

class ItemPropertyItemsControllerTest < ActionController::TestCase
  setup do
    @item_property_item = item_property_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_property_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_property_item" do
    assert_difference('ItemPropertyItem.count') do
      post :create, item_property_item: { item_id: @item_property_item.item_id, property_item_id: @item_property_item.property_item_id }
    end

    assert_redirected_to item_property_item_path(assigns(:item_property_item))
  end

  test "should show item_property_item" do
    get :show, id: @item_property_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_property_item
    assert_response :success
  end

  test "should update item_property_item" do
    patch :update, id: @item_property_item, item_property_item: { item_id: @item_property_item.item_id, property_item_id: @item_property_item.property_item_id }
    assert_redirected_to item_property_item_path(assigns(:item_property_item))
  end

  test "should destroy item_property_item" do
    assert_difference('ItemPropertyItem.count', -1) do
      delete :destroy, id: @item_property_item
    end

    assert_redirected_to item_property_items_path
  end
end
