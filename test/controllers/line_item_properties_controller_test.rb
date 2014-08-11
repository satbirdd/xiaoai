require 'test_helper'

class LineItemPropertiesControllerTest < ActionController::TestCase
  setup do
    @line_item_property = line_item_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_item_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_item_property" do
    assert_difference('LineItemProperty.count') do
      post :create, line_item_property: { item_property_item_id: @line_item_property.item_property_item_id, line_item_id: @line_item_property.line_item_id }
    end

    assert_redirected_to line_item_property_path(assigns(:line_item_property))
  end

  test "should show line_item_property" do
    get :show, id: @line_item_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_item_property
    assert_response :success
  end

  test "should update line_item_property" do
    patch :update, id: @line_item_property, line_item_property: { item_property_item_id: @line_item_property.item_property_item_id, line_item_id: @line_item_property.line_item_id }
    assert_redirected_to line_item_property_path(assigns(:line_item_property))
  end

  test "should destroy line_item_property" do
    assert_difference('LineItemProperty.count', -1) do
      delete :destroy, id: @line_item_property
    end

    assert_redirected_to line_item_properties_path
  end
end
