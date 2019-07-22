class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.decimal :discount_percentage
      t.string :description

      t.timestamps
    end
  end
end
