class FeaturesController < ApplicationController
    def index
        @features = Feature.all
    end

    def show
        @feature = Feature.find(params[:id])
        @products = @feature.products.select('products.*, feature_products.additional_info')
    end

    def add_to_list
        puts "Running add_to_list..."
        current_user.list.features << Feature.find(params[:id])
    end
end
