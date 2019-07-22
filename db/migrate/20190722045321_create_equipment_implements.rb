class CreateEquipmentImplements < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_implements do |t|

      t.timestamps
    end
  end
end
