class Product < ApplicationRecord
    has_many :feature_products
    has_many :features, :through => :feature_products
end
