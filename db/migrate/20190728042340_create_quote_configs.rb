class CreateQuoteConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :quote_configs do |t|
      t.decimal :min_markup

      t.timestamps
    end
  end
end
