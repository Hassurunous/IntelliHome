class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :frame_link
      t.string :text_link
      t.string :image_link

      t.timestamps
    end
  end
end
