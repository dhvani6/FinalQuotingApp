class AddModelToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :model, foreign_key: true
  end
end
