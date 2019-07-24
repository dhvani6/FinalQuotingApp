class AddManufacturerToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :manufacturer, foreign_key: true
  end
end
