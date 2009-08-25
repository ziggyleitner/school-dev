require 'test_helper'

class BeatsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beat" do
    assert_difference('Beat.count') do
      post :create, :beat => { }
    end

    assert_redirected_to beat_path(assigns(:beat))
  end

  test "should show beat" do
    get :show, :id => beats(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => beats(:one).id
    assert_response :success
  end

  test "should update beat" do
    put :update, :id => beats(:one).id, :beat => { }
    assert_redirected_to beat_path(assigns(:beat))
  end

  test "should destroy beat" do
    assert_difference('Beat.count', -1) do
      delete :destroy, :id => beats(:one).id
    end

    assert_redirected_to beats_path
  end
end
