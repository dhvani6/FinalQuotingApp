class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_fname
      t.string :customer_lname
      t.string :customer_phone
      t.string :customer_address
      t.string :customer_city
      t.string :customer_state
      t.string :customer_zip

      t.timestamps
    end
  end
end
