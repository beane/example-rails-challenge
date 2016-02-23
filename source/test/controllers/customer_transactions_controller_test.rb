require 'test_helper'

class CustomerTransactionsControllerTest < ActionController::TestCase
  setup do
    @customer_transaction = customer_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_transaction" do
    assert_difference('CustomerTransaction.count') do
      post :create, customer_transaction: { amount: @customer_transaction.amount, paid: @customer_transaction.paid, refunded: @customer_transaction.refunded, transaction_time: @customer_transaction.transaction_time, unique_code: @customer_transaction.unique_code }
    end

    assert_redirected_to customer_transaction_path(assigns(:customer_transaction))
  end

  test "should show customer_transaction" do
    get :show, id: @customer_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_transaction
    assert_response :success
  end

  test "should update customer_transaction" do
    patch :update, id: @customer_transaction, customer_transaction: { amount: @customer_transaction.amount, paid: @customer_transaction.paid, refunded: @customer_transaction.refunded, transaction_time: @customer_transaction.transaction_time, unique_code: @customer_transaction.unique_code }
    assert_redirected_to customer_transaction_path(assigns(:customer_transaction))
  end

  test "should destroy customer_transaction" do
    assert_difference('CustomerTransaction.count', -1) do
      delete :destroy, id: @customer_transaction
    end

    assert_redirected_to customer_transactions_path
  end
end
