class Manufacturer < ApplicationRecord
  has_many :quotes
  has_many :series


  def self.select_values
    Manufacturer.all.map do |manufacturer| [manufacturer.manufacturer_name, manufacturer.id,
                                            { data: { url: data_url(manufacturer) }}]
    end
  end

  private

  def self.data_url(manufacturer)
    Rails.application.routes.url_helpers.manufacturer_series_index_path(manufacturer, format: :json)
  end
end
