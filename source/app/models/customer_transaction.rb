require 'securerandom'

class CustomerTransaction < ActiveRecord::Base
  belongs_to :customer, polymorphic: true
  before_create :set_unique_code
  before_create :set_transaction_time

  validates :amount, presence: true
  validates :customer_id, presence: true
  validates :customer_type, presence: true, inclusion: { in: ["User", "Company"] }

  def set_unique_code
    self.unique_code = SecureRandom.uuid
  end

  def set_transaction_time
    self.transaction_time = DateTime.now
  end
end
