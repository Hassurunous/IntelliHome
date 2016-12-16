class ChangeStringToTextInProduct < ActiveRecord::Migration[5.0]
  def change
      change_column :products, :frame_link, :text
      change_column :products, :text_link, :text
      change_column :products, :image_link, :text
  end
end
