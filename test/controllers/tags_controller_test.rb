require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post :create, tag: { CO: @tag.CO, DMS: @tag.DMS, DS: @tag.DS, EM: @tag.EM, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, OOPD: @tag.OOPD, SAD: @tag.SAD, name: @tag.name }
    end

    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should show tag" do
    get :show, id: @tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag
    assert_response :success
  end

  test "should update tag" do
    patch :update, id: @tag, tag: { CO: @tag.CO, DMS: @tag.DMS, DS: @tag.DS, EM: @tag.EM, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT1: @tag.IT1, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, IT2: @tag.IT2, OOPD: @tag.OOPD, SAD: @tag.SAD, name: @tag.name }
    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete :destroy, id: @tag
    end

    assert_redirected_to tags_path
  end
end
