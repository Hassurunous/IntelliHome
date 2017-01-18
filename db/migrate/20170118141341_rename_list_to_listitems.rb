class RenameListToListitems < ActiveRecord::Migration[5.0]
  def change
      rename_table :lists, :list_items
  end
end
