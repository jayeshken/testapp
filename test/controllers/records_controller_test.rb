require 'test_helper'

class RecordsControllerTest < ActionController::TestCase
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post :create, record: { IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, name: @record.name, subject: @record.subject, subject: @record.subject, subject: @record.subject, subject: @record.subject, subject: @record.subject, subject: @record.subject }
    end

    assert_redirected_to record_path(assigns(:record))
  end

  test "should show record" do
    get :show, id: @record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record
    assert_response :success
  end

  test "should update record" do
    patch :update, id: @record, record: { IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT1: @record.IT1, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, IT2: @record.IT2, name: @record.name, subject: @record.subject, subject: @record.subject, subject: @record.subject, subject: @record.subject, subject: @record.subject, subject: @record.subject }
    assert_redirected_to record_path(assigns(:record))
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete :destroy, id: @record
    end

    assert_redirected_to records_path
  end
end
