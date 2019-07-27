class AddTireReplacementRearToListPrices < ActiveRecord::Migration[5.2]
  def change
    add_reference :list_prices, :Tire_Replacement_Rear, foreign_key: true
  end
end
