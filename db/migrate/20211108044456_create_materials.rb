class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      
      t.integer :recipe_id, null: false
      t.string :ingredient, null: false
      t.string :amount

      t.timestamps
    end
  end
end
