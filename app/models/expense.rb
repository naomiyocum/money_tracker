class Expense < ApplicationRecord
  validates_presence_of :label, :amount

  scope :ordered, -> { order(id: :desc) }
end
