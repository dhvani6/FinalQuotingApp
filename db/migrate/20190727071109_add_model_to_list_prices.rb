class AddModelToListPrices < ActiveRecord::Migration[5.2]
  def change
    add_reference :list_prices, :model, foreign_key: true
  end
end
