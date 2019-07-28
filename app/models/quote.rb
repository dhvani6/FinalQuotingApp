class Quote < ApplicationRecord
  validates :markup_percentage, presence: true

  /def above_minimum
    markup_percentage >= getMinMarkup
  end /



  belongs_to :customer
  belongs_to :manufacturer
  belongs_to :series
  belongs_to :model
  belongs_to :tire_replacement_front
  belongs_to :tire_replacement_rear
  belongs_to :attachment
  belongs_to :implement
  belongs_to :configuration
  has_many :specific_equipments


end
