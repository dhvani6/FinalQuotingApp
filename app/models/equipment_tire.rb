class EquipmentTire < ApplicationRecord
  has_many :quotes
  belongs_to :tire_replacement_front
  belongs_to :tire_replacement_rear
end
