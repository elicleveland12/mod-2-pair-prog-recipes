class CreateAllergenns < ActiveRecord::Migration[5.2]
  def change
    create_table :allergenns do |t|
      t.integer :user_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
