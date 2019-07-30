class Model < ApplicationRecord
  has_many :quotes
  belongs_to :series

  /Second/
  def self.select_values1(series)
    return [] unless series
    series.models.pluck(:model_number, :id)
  end
end
