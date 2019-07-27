class AddManufacturerToSeries < ActiveRecord::Migration[5.2]
  def change
    add_reference :series, :manufacturer, foreign_key: true
  end
end
