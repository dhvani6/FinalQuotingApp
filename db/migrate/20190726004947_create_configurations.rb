class CreateConfigurations < ActiveRecord::Migration[5.2]
  def change
    create_table :configurations do |t|
      t.decimal :min_markup

      t.timestamps
    end
  end
end
