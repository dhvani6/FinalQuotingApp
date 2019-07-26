class Series < ApplicationRecord
  has_many :quotes
  belongs_to :manufacturer
  belongs_to :model
end
