class Company < ActiveRecord::Base
  has_many :customer_transactions, as: :customer, dependent: :destroy

  def display_name
    name + ' ' + zip_code
  end
end
