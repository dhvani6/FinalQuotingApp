class TireReplacementRear < ApplicationRecord
  has_many :equipment_tires
  has_many :quotes
  has_many :list_prices
end
