class AddListPriceToQuote < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :list_price, foreign_key: true
  end
end
