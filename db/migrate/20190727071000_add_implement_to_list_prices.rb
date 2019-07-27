class AddImplementToListPrices < ActiveRecord::Migration[5.2]
  def change
    add_reference :list_prices, :implement, foreign_key: true
  end
end
