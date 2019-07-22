class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.decimal :base_quote_price
      t.decimal :total_price
      t.datetime :quote_date
      t.decimal :markup_percentage
      t.datetime :finalize_date
      t.boolean :sale_finalized

      t.timestamps
    end
  end
end
