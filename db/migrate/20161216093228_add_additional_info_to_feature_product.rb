class AddAdditionalInfoToFeatureProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :feature_products, :additional_info, :text
  end
end
