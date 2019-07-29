class Model < ApplicationRecord
  has_many :quotes
  belongs_to :series

end
