class Expense < ApplicationRecord
  validates_presence_of :label, :amount
end
