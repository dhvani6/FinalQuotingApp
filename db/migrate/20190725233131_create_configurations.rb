class CreateConfigurations < ActiveRecord::Migration[5.2]
  def change
    create_table :configurations do |t|
      t.min_markup :decimal

      t.timestamps
    end
  end
end
