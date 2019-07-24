class EquipmentAttachment < ApplicationRecord
  has_many :quotes
  belongs_to :attachment
end
