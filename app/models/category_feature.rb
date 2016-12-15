class CategoryFeature < ApplicationRecord
    belongs_to :feature
    belongs_to :category
end
