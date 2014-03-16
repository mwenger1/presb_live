require 'test_helper'

class HangoutsControllerTest < ActionController::TestCase
  setup do
    @hangout = hangouts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hangouts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hangout" do
    assert_difference('Hangout.count') do
      post :create, hangout: { datetime: @hangout.datetime, description: @hangout.description, hangout_url: @hangout.hangout_url, max_participants: @hangout.max_participants, recordable: @hangout.recordable, title: @hangout.title, user_id: @hangout.user_id }
    end

    assert_redirected_to hangout_path(assigns(:hangout))
  end

  test "should show hangout" do
    get :show, id: @hangout
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hangout
    assert_response :success
  end

  test "should update hangout" do
    patch :update, id: @hangout, hangout: { datetime: @hangout.datetime, description: @hangout.description, hangout_url: @hangout.hangout_url, max_participants: @hangout.max_participants, recordable: @hangout.recordable, title: @hangout.title, user_id: @hangout.user_id }
    assert_redirected_to hangout_path(assigns(:hangout))
  end

  test "should destroy hangout" do
    assert_difference('Hangout.count', -1) do
      delete :destroy, id: @hangout
    end

    assert_redirected_to hangouts_path
  end
end
