class Income < ApplicationRecord
  validates_presence_of :label, :amount
end
