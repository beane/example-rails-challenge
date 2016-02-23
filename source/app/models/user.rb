class User < ActiveRecord::Base
  has_many :customer_transactions, as: :customer, dependent: :destroy
end
