require 'securerandom'

class CustomerTransaction < ActiveRecord::Base
  belongs_to :customer, polymorphic: true
  before_create :set_unique_code
  before_create :set_transaction_time

  validates :amount, presence: true
  validates :customer_id, presence: true
  validates :customer_type, presence: true, inclusion: { in: ["User", "Company"] }

  def self.successful
    self.where(paid: true, refunded: false)
  end

  def self.failed
    self.where(paid: false)
  end

  def self.disputed
    self.where(paid: true, refunded: true)
  end

  def set_unique_code
    self.unique_code = SecureRandom.uuid
  end

  def set_transaction_time
    self.transaction_time = DateTime.now
  end
end
