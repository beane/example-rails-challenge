class CreateCustomerTransactions < ActiveRecord::Migration
  def change
    create_table :customer_transactions do |t|
      t.datetime :transaction_time
      t.float :amount
      t.string :unique_code
      t.boolean :paid
      t.boolean :refunded
      t.integer :customer_id
      t.string :customer_type

      t.timestamps null: false
    end

    add_index :customer_transactions, [:customer_id, :customer_type]
    add_index :customer_transactions, :unique_code, unique: true
  end
end
