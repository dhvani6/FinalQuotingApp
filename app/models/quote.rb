class Quote < ApplicationRecord
  validates :markup_percentage, presence: true, if: :above_minimum

  def above_minimum
    markup_percentage >= QuoteConfigsController.getMin
  end

  def getSuggestedLP(num)
    #statement = "Select suggested_list_price from list_prices where model_id = num"
    #records_array = ActiveRecord::Base.connection.execute(statement)
  end


  belongs_to :customer
  belongs_to :list_price
  belongs_to :series
  belongs_to :model
  belongs_to :tire_replacement_front
  belongs_to :tire_replacement_rear
  belongs_to :attachment
  belongs_to :implement
  belongs_to :quote_config
  has_many :specific_equipments


end
