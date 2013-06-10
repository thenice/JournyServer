require 'test_helper'

class JourniesControllerTest < ActionController::TestCase
  setup do
    @journy = journies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journy" do
    assert_difference('Journy.count') do
      post :create, journy: { description: @journy.description, name: @journy.name }
    end

    assert_redirected_to journy_path(assigns(:journy))
  end

  test "should show journy" do
    get :show, id: @journy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journy
    assert_response :success
  end

  test "should update journy" do
    put :update, id: @journy, journy: { description: @journy.description, name: @journy.name }
    assert_redirected_to journy_path(assigns(:journy))
  end

  test "should destroy journy" do
    assert_difference('Journy.count', -1) do
      delete :destroy, id: @journy
    end

    assert_redirected_to journies_path
  end
end
