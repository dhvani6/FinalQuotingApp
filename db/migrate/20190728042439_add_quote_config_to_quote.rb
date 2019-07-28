class AddQuoteConfigToQuote < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :quote_config, foreign_key: true
  end
end
