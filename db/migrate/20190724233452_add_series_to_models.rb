class AddSeriesToModels < ActiveRecord::Migration[5.2]
  def change
    add_reference :models, :series, foreign_key: true
  end
end
