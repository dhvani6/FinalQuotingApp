class CreateTireReplacementRears < ActiveRecord::Migration[5.2]
  def change
    create_table :tire_replacement_rears do |t|
      t.string :rear_tires
      t.string :order_number

      t.timestamps
    end
  end
end
