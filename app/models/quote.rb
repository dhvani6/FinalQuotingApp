class Quote < ApplicationRecord
  validates :markup_percentage,presence: true
  validates_numericality_of :markup_percentage, :greater_than => 15, :less_than => 100
  validates :manufacturer_id, presence: false


  def getSuggestedLP(num)
    #statement = "Select suggested_list_price from list_prices where model_id = num"
    #records_array = ActiveRecord::Base.connection.execute(statement)
  end


  belongs_to :customer
  belongs_to :manufacturer
  / belongs_to :discount /
  belongs_to :series
  belongs_to :model
  belongs_to :tire_replacement_front
  belongs_to :tire_replacement_rear
  belongs_to :attachment
  belongs_to :implement
  has_many :specific_equipments


end
