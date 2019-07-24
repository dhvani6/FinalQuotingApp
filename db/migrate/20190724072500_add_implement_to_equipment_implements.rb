class AddImplementToEquipmentImplements < ActiveRecord::Migration[5.2]
  def change
    add_reference :equipment_implements, :implement, foreign_key: true
  end
end
