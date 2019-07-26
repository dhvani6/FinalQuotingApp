class Manufacturer < ApplicationRecord
  has_many :quotes
  has_many :series

end
