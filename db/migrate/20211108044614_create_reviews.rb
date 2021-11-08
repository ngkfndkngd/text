class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      
      t.integer :user_id, null: false
      t.integer :recipe_id, null: false
      t.text :comment, null: false
      t.string :review_image_id

      t.timestamps
    end
  end
end
