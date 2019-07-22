class CreateSpecificEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :specific_equipments do |t|
      t.string :serial_number

      t.timestamps
    end
  end
end
