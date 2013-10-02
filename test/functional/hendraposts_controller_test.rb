require 'test_helper'

class HendrapostsControllerTest < ActionController::TestCase
  setup do
    @hendrapost = hendraposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hendraposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hendrapost" do
    assert_difference('Hendrapost.count') do
      post :create, hendrapost: { content: @hendrapost.content, user_id: @hendrapost.user_id }
    end

    assert_redirected_to hendrapost_path(assigns(:hendrapost))
  end

  test "should show hendrapost" do
    get :show, id: @hendrapost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hendrapost
    assert_response :success
  end

  test "should update hendrapost" do
    put :update, id: @hendrapost, hendrapost: { content: @hendrapost.content, user_id: @hendrapost.user_id }
    assert_redirected_to hendrapost_path(assigns(:hendrapost))
  end

  test "should destroy hendrapost" do
    assert_difference('Hendrapost.count', -1) do
      delete :destroy, id: @hendrapost
    end

    assert_redirected_to hendraposts_path
  end
end
