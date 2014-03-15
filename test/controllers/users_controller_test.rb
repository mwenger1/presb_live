require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { dependant_dob: @user.dependant_dob, dob: @user.dob, email_address: @user.email_address, in_hospital: @user.in_hospital, is_caregiver: @user.is_caregiver, name: @user.name, password: @user.password, searchable_by_age: @user.searchable_by_age, searchable_by_condition: @user.searchable_by_condition }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { dependant_dob: @user.dependant_dob, dob: @user.dob, email_address: @user.email_address, in_hospital: @user.in_hospital, is_caregiver: @user.is_caregiver, name: @user.name, password: @user.password, searchable_by_age: @user.searchable_by_age, searchable_by_condition: @user.searchable_by_condition }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
