class Series < ApplicationRecord
  has_many :quotes
  belongs_to :manufacturer
  has_many :model

  def self.select_values(manufacturer)
    return [] unless manufacturer
    manufacturer.series.pluck(:series_number, :id)
  end
end
