class CreateCategoryFeatures < ActiveRecord::Migration[5.0]
    def change
        create_table :category_features do |t|
            t.belongs_to :category, index: true
            t.belongs_to :feature, index: true
            t.timestamps
        end
    end
end
