class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
        @features = @category.features.includes(:category_features).references(:category_features)
    end
end
