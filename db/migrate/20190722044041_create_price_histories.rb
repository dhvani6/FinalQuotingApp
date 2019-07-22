class CreatePriceHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :price_histories do |t|
      t.decimal :past_price

      t.timestamps
    end
  end
end
