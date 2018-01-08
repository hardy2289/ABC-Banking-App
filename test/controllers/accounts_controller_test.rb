require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post :create, account: {  accountType: @account.accountType, userAddress: @account.userAddress, balance: @account.balance, bankLocation: @account.bankLocation, c_id: @account.c_id, dob: @account.dob, userEmail: @account.userEmail,  minBalance: @account.minBalance, userName: @account.userName, userPhoneNo: @account.userPhoneNo, userAddress: @account.userAddress }
    end

    assert_redirected_to account_path(assigns(:account))
  end

  test "should show account" do
    get :show, id: @account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account
    assert_response :success
  end

  test "should update account" do
    patch :update, id: @account, account: { accountType: @account.accountType,  balance: @account.balance, bankLocation: @account.bankLocation, c_id: @account.c_id, dob: @account.dob, userEmail: @account.userEmail,  minBalance: @account.minBalance, userName: @account.userName, userPhoneNo: @account.userPhoneNo, userAddress: @account.userAddress }
    assert_redirected_to account_path(assigns(:account))
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete :destroy, id: @account
    end

    assert_redirected_to accounts_path
  end
end