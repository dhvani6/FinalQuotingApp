class Quote < ApplicationRecord
  #validates :markup_percentage, presence: true, if: :above_minimum

  def above_minimum
    markup_percentage >= @min
  end

  belongs_to :customer
  belongs_to :series
  belongs_to :model
  belongs_to :tire_replacement_front
  belongs_to :tire_replacement_rear
  belongs_to :attachment
  belongs_to :implement
  has_many :specific_equipments


end
