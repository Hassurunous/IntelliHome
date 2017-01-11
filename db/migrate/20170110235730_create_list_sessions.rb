class CreateListSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :list_sessions do |t|

      t.timestamps
    end
  end
end
