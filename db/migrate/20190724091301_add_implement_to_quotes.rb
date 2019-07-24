class AddImplementToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :implement, foreign_key: true
  end
end
