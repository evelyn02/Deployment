require 'test_helper'

class ProjectMessagesControllerTest < ActionController::TestCase
  setup do
    @project_message = project_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_message" do
    assert_difference('ProjectMessage.count') do
      post :create, project_message: { email_body: @project_message.email_body, fax_body: @project_message.fax_body, sms_body: @project_message.sms_body, string: @project_message.string, title: @project_message.title }
    end

    assert_redirected_to project_message_path(assigns(:project_message))
  end

  test "should show project_message" do
    get :show, id: @project_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_message
    assert_response :success
  end

  test "should update project_message" do
    put :update, id: @project_message, project_message: { email_body: @project_message.email_body, fax_body: @project_message.fax_body, sms_body: @project_message.sms_body, string: @project_message.string, title: @project_message.title }
    assert_redirected_to project_message_path(assigns(:project_message))
  end

  test "should destroy project_message" do
    assert_difference('ProjectMessage.count', -1) do
      delete :destroy, id: @project_message
    end

    assert_redirected_to project_messages_path
  end
end
