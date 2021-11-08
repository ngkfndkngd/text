class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      
      t.integer :user_id, null: false
      t.integer :record_status, null: false

      t.timestamps
    end
  end
end
