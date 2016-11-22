class Tuition < ActiveRecord::Base
  has_many :payments
  has_many :students, through: :payments

  validates :month, presence: true, inclusion: { in: 1..12 }
end
