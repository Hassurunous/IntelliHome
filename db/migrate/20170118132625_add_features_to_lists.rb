class AddFeaturesToLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :lists, :feature, foreign_key: true
  end
end
