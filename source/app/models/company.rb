class Company < ActiveRecord::Base
  has_many :customer_transactions, as: :customer
end
