require 'test_helper'

class ClassNeedsControllerTest < ActionController::TestCase
  setup do
    @class_need = class_needs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_needs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_need" do
    assert_difference('ClassNeed.count') do
      post :create, class_need: { contacts_url: @class_need.contacts_url, status: @class_need.status }
    end

    assert_redirected_to class_need_path(assigns(:class_need))
  end

  test "should show class_need" do
    get :show, id: @class_need
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_need
    assert_response :success
  end

  test "should update class_need" do
    put :update, id: @class_need, class_need: { contacts_url: @class_need.contacts_url, status: @class_need.status }
    assert_redirected_to class_need_path(assigns(:class_need))
  end

  test "should destroy class_need" do
    assert_difference('ClassNeed.count', -1) do
      delete :destroy, id: @class_need
    end

    assert_redirected_to class_needs_path
  end
end
