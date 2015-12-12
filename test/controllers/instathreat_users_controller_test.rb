require 'test_helper'

class InstathreatUsersControllerTest < ActionController::TestCase
  setup do
    @instathreat_user = instathreat_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instathreat_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instathreat_user" do
    assert_difference('InstathreatUser.count') do
      post :create, instathreat_user: { email: @instathreat_user.email, phone_number: @instathreat_user.phone_number, why_owed_money: @instathreat_user.why_owed_money }
    end

    assert_redirected_to instathreat_user_path(assigns(:instathreat_user))
  end

  test "should show instathreat_user" do
    get :show, id: @instathreat_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instathreat_user
    assert_response :success
  end

  test "should update instathreat_user" do
    patch :update, id: @instathreat_user, instathreat_user: { email: @instathreat_user.email, phone_number: @instathreat_user.phone_number, why_owed_money: @instathreat_user.why_owed_money }
    assert_redirected_to instathreat_user_path(assigns(:instathreat_user))
  end

  test "should destroy instathreat_user" do
    assert_difference('InstathreatUser.count', -1) do
      delete :destroy, id: @instathreat_user
    end

    assert_redirected_to instathreat_users_path
  end
end
