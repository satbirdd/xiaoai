require 'test_helper'

class LinePropertiesControllerTest < ActionController::TestCase
  setup do
    @line_property = line_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:line_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create line_property" do
    assert_difference('LineProperty.count') do
      post :create, line_property: { name: @line_property.name, targetable_id: @line_property.targetable_id, targetable_type: @line_property.targetable_type }
    end

    assert_redirected_to line_property_path(assigns(:line_property))
  end

  test "should show line_property" do
    get :show, id: @line_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @line_property
    assert_response :success
  end

  test "should update line_property" do
    patch :update, id: @line_property, line_property: { name: @line_property.name, targetable_id: @line_property.targetable_id, targetable_type: @line_property.targetable_type }
    assert_redirected_to line_property_path(assigns(:line_property))
  end

  test "should destroy line_property" do
    assert_difference('LineProperty.count', -1) do
      delete :destroy, id: @line_property
    end

    assert_redirected_to line_properties_path
  end
end
