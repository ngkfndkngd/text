class AddTagimageidToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :tag_image_id, :string
  end
end
