class List < ApplicationRecord
    has_many :features
    belongs_to :user
end
