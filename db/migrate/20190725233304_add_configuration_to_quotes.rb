class AddConfigurationToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :configuration, foreign_key: true
  end
end
