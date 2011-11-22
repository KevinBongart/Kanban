require 'test_helper'

class AttachedCopiesControllerTest < ActionController::TestCase
  setup do
    @attached_copy = attached_copies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attached_copies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attached_copy" do
    assert_difference('AttachedCopy.count') do
      post :create, :attached_copy => @attached_copy.attributes
    end

    assert_redirected_to attached_copy_path(assigns(:attached_copy))
  end

  test "should show attached_copy" do
    get :show, :id => @attached_copy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @attached_copy.to_param
    assert_response :success
  end

  test "should update attached_copy" do
    put :update, :id => @attached_copy.to_param, :attached_copy => @attached_copy.attributes
    assert_redirected_to attached_copy_path(assigns(:attached_copy))
  end

  test "should destroy attached_copy" do
    assert_difference('AttachedCopy.count', -1) do
      delete :destroy, :id => @attached_copy.to_param
    end

    assert_redirected_to attached_copies_path
  end
end
