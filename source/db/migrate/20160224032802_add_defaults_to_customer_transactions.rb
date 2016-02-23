class AddDefaultsToCustomerTransactions < ActiveRecord::Migration
  def up
    change_column :customer_transactions, :paid, :boolean, default: true
    change_column :customer_transactions, :refunded, :boolean, default: false
    change_column :customer_transactions, :refunded, :boolean, default: false
  end

  def down
    change_column :customer_transactions, :paid, :boolean
    change_column :customer_transactions, :refunded, :boolean
    change_column :customer_transactions, :refunded, :boolean
  end
end
