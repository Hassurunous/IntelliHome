class CreateFeatureProducts < ActiveRecord::Migration[5.0]
    def change
        create_table :feature_products do |t|
            t.belongs_to :feature, index: true
            t.belongs_to :product, index: true
            t.timestamps
        end
    end
end
