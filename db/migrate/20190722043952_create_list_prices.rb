class CreateListPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :list_prices do |t|
      t.decimal :suggested_list_price
      t.datetime :price_change_date
      t.decimal :new_price

      t.timestamps
    end
  end
end
