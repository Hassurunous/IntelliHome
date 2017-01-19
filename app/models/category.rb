class Category < ApplicationRecord
    has_many :category_features
    has_many :features, :through => :category_features

    def list_features
        self.features.includes(:category_features).references(:category_features)
    end
end
