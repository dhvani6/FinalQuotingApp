class AddTireReplacementRearToEquipmentTires < ActiveRecord::Migration[5.2]
  def change
    add_reference :equipment_tires, :tire_replacement_rear, foreign_key: true
  end
end
