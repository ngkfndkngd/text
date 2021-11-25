class RemoveNFromTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :tags, :n, :string
  end
end
