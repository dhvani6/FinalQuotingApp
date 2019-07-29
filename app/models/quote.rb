class Quote < ApplicationRecord
  validates :markup_percentage, presence: true
  validates_numericality_of :markup_percentage, :greater_than => 15, :less_than => 100



  belongs_to :customer
  belongs_to :manufacturer
  belongs_to :series
  belongs_to :model
  belongs_to :tire_replacement_front
  belongs_to :tire_replacement_rear
  belongs_to :attachment
  belongs_to :implement
  belongs_to :quote_config
  has_many :specific_equipments


end
