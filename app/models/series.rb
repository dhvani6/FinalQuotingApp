class Series < ApplicationRecord
  has_many :quotes
  belongs_to :manufacturer
  has_many :model

  def self.select_values(manufacturer)
    return [] unless manufacturer
    manufacturer.series.pluck(:series_number, :id)
  end

  /Second/
  def self.select_values1
    Series.all.map { |series| [series.series_number, series.id, { data: { url: data_url(series) }}]}
  end

  private

  def self.data_url(series)
    Rails.application.routes.url_helpers.series_model_path(series, format: :json)
  end

end