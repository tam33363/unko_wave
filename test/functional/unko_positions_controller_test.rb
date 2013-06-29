require 'test_helper'

class UnkoPositionsControllerTest < ActionController::TestCase
  setup do
    @unko_position = unko_positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unko_positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unko_position" do
    assert_difference('UnkoPosition.count') do
      post :create, unko_position: { info: @unko_position.info, latitude: @unko_position.latitude, longitude: @unko_position.longitude }
    end

    assert_redirected_to unko_position_path(assigns(:unko_position))
  end

  test "should show unko_position" do
    get :show, id: @unko_position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unko_position
    assert_response :success
  end

  test "should update unko_position" do
    put :update, id: @unko_position, unko_position: { info: @unko_position.info, latitude: @unko_position.latitude, longitude: @unko_position.longitude }
    assert_redirected_to unko_position_path(assigns(:unko_position))
  end

  test "should destroy unko_position" do
    assert_difference('UnkoPosition.count', -1) do
      delete :destroy, id: @unko_position
    end

    assert_redirected_to unko_positions_path
  end
end
