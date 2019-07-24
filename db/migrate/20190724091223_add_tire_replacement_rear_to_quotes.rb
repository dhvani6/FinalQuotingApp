class AddTireReplacementRearToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :tire_replacement_rear, foreign_key: true
  end
end
