class Quote < ApplicationRecord
  belongs_to :customer
  belongs_to :quote
  belongs_to :series
end
