class Feature < ApplicationRecord
     has_many :category_features
     has_many :categories, :through => :category_features
end
