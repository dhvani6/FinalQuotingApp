class Series < ApplicationRecord
  has_many :quotes
  belongs_to :manufacturer
  belongs_to :model

  def self.select_values(manufacturer)
    return [] unless manufacturer
    manufacturer.series.pluck(:series_number, :id)
  end
end
