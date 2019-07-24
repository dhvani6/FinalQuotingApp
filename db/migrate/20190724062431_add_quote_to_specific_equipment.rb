class AddQuoteToSpecificEquipment < ActiveRecord::Migration[5.2]
  def change
    add_reference :specific_equipments, :quote, foreign_key: true
  end
end
