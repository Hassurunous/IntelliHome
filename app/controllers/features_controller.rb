class FeaturesController < ApplicationController
    def index
        @features = Feature.all
    end

    def show
        @feature = Feature.find(params[:id])
        @products = @feature.products.select('products.*, feature_products.additional_info')
    end
end
