class TireReplacementFront < ApplicationRecord
  has_many :equipment_tires
  has_many :quotes
end
