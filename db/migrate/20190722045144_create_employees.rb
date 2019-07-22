class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :employee_fname
      t.string :employee_lname
      t.string :employee_phone
      t.string :store_location
      t.boolean :is_manager

      t.timestamps
    end
  end
end
