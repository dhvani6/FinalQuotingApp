class EquipmentImplement < ApplicationRecord
  has_many :quotes
  belongs_to :implement
end
