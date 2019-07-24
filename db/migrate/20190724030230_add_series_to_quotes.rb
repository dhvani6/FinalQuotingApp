class AddSeriesToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :series, foreign_key: true
  end
end
