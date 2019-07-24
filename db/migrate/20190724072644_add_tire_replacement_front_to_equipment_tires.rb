class AddTireReplacementFrontToEquipmentTires < ActiveRecord::Migration[5.2]
  def change
    add_reference :equipment_tires, :tire_replacement_front, foreign_key: true
  end
end
