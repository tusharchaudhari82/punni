require 'test_helper'

class TauntsControllerTest < ActionController::TestCase
  setup do
    @taunt = taunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taunt" do
    assert_difference('Taunt.count') do
      post :create, taunt: { content: @taunt.content, name: @taunt.name }
    end

    assert_redirected_to taunt_path(assigns(:taunt))
  end

  test "should show taunt" do
    get :show, id: @taunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taunt
    assert_response :success
  end

  test "should update taunt" do
    patch :update, id: @taunt, taunt: { content: @taunt.content, name: @taunt.name }
    assert_redirected_to taunt_path(assigns(:taunt))
  end

  test "should destroy taunt" do
    assert_difference('Taunt.count', -1) do
      delete :destroy, id: @taunt
    end

    assert_redirected_to taunts_path
  end
end
