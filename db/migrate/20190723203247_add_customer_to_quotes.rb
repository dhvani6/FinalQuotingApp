class AddCustomerToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :customer, foreign_key: true
  end
end
