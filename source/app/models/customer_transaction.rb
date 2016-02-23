class CustomerTransaction < ActiveRecord::Base
  belongs_to :customer, polymorphic: true
end
