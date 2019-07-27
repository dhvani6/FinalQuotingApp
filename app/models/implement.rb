class Implement < ApplicationRecord
  has_many :equipment_implements
  has_many :quotes
  has_many :list_prices
end
