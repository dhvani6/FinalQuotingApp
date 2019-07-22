class CreateEquipmentAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :equipment_attachments do |t|

      t.timestamps
    end
  end
end
