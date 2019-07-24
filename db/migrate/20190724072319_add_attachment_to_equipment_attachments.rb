class AddAttachmentToEquipmentAttachments < ActiveRecord::Migration[5.2]
  def change
    add_reference :equipment_attachments, :attachment, foreign_key: true
  end
end
