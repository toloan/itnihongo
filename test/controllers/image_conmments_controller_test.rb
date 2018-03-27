require 'test_helper'

class ImageConmmentsControllerTest < ActionController::TestCase
  setup do
    @image_conmment = image_conmments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_conmments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_conmment" do
    assert_difference('ImageConmment.count') do
      post :create, image_conmment: { comment: @image_conmment.comment, image_id: @image_conmment.image_id, user_id: @image_conmment.user_id }
    end

    assert_redirected_to image_conmment_path(assigns(:image_conmment))
  end

  test "should show image_conmment" do
    get :show, id: @image_conmment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_conmment
    assert_response :success
  end

  test "should update image_conmment" do
    patch :update, id: @image_conmment, image_conmment: { comment: @image_conmment.comment, image_id: @image_conmment.image_id, user_id: @image_conmment.user_id }
    assert_redirected_to image_conmment_path(assigns(:image_conmment))
  end

  test "should destroy image_conmment" do
    assert_difference('ImageConmment.count', -1) do
      delete :destroy, id: @image_conmment
    end

    assert_redirected_to image_conmments_path
  end
end
