class Feature < ApplicationRecord
     has_many :category_features
     has_many :categories, :through => :category_features
     has_many :feature_products
     has_many :products, :through => :feature_products
end
