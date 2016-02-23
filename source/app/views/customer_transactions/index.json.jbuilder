json.array!(@customer_transactions) do |customer_transaction|
  json.extract! customer_transaction, :id, :transaction_time, :amount, :unique_code, :paid, :refunded
  json.url customer_transaction_url(customer_transaction, format: :json)
end
