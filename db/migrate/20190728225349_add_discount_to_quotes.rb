class AddDiscountToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :discount, foreign_key: true
  end
end
