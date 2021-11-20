class AddWorkToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :work, :text
  end
end
