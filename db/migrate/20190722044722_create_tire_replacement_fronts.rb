class CreateTireReplacementFronts < ActiveRecord::Migration[5.2]
  def change
    create_table :tire_replacement_fronts do |t|
      t.string :front_tires
      t.string :order_number

      t.timestamps
    end
  end
end
