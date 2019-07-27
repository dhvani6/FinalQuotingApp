class ListPrice < ApplicationRecord
  belongs_to :attachment
  belongs_to :implement
  belongs_to :tire_replacement_front
  belongs_to :tire_replacement_rear
  belongs_to :model
end
