require 'test_helper'

class LinePropertyItemsControllerTest < ActionController::TestCase
  setup do
    @line_property_item = line_property_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_property_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_property_item" do
    assert_difference('LinePropertyItem.count') do
      post :create, line_property_item: { line_property: @line_property_item.line_property, name: @line_property_item.name }
    end

    assert_redirected_to line_property_item_path(assigns(:line_property_item))
  end

  test "should show line_property_item" do
    get :show, id: @line_property_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_property_item
    assert_response :success
  end

  test "should update line_property_item" do
    patch :update, id: @line_property_item, line_property_item: { line_property: @line_property_item.line_property, name: @line_property_item.name }
    assert_redirected_to line_property_item_path(assigns(:line_property_item))
  end

  test "should destroy line_property_item" do
    assert_difference('LinePropertyItem.count', -1) do
      delete :destroy, id: @line_property_item
    end

    assert_redirected_to line_property_items_path
  end
end
