class AddTireReplacementFrontToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :tire_replacement_front, foreign_key: true
  end
end
