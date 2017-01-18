class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.integer :feature_id

      t.timestamps
    end
    add_index :lists, :user_id
    add_index :lists, :feature_id
    add_index :lists, [:user_id, :feature_id], unique: true
  end
end
