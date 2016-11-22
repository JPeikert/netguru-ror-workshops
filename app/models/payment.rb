class Payment < ActiveRecord::Base
  belongs_to :student
  belongs_to :tuition

  validates :payment_date, presence: true
end
