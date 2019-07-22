class CreateEquipmentTires < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_tires do |t|

      t.timestamps
    end
  end
end
