class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :series
  belongs_to :model
  belongs_to :specific_equipment
end
