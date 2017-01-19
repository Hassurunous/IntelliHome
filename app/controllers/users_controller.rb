class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = params[:user] ? User.new(user_params) : create_new_guest
        if @user.save
            log_in @user
            redirect_to root_url
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
        @features = @user.features
    end

    def cart
        @user = User.find(params[:id])
        @features = @user.features
        @products = []
        @features.each do |feature|
            feature.products.select('products.*, feature_products.additional_info').each do | product |
                @products.push(product)
                puts "product.id = #{product.id}"
            end
        end
        @products = @products.uniq { |p| p.id }
    end

    def toggle_feature
        puts request.path
        @user = User.find(session[:user_id])
        @features = @user.features
        @feature = Feature.find(params[:id])
        if @features.exists?(@feature.id)
            ListItem.where(user_id: @user.id, feature_id: @feature.id).destroy_all
        else
            @features << @feature
        end
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
