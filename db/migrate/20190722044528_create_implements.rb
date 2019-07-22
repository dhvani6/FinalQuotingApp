class CreateImplements < ActiveRecord::Migration[5.2]
  def change
    create_table :implements do |t|
      t.string :implement_feature

      t.timestamps
    end
  end
end
