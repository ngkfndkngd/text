class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|

      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :count
      t.text :description, null: false
      t.string :recipe_image_id

      t.timestamps
    end
  end
end
