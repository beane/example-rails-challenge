class User < ActiveRecord::Base
  has_many :customer_transactions, as: :customer, dependent: :destroy

  def display_name
    first_name + ' ' + last_name
  end
end
