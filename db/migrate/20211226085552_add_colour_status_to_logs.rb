class AddColourStatusToLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :logs, :colour_status, :integer, default: 0, null: false
  end
end
