class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        puts "params[:user] = #{params[:user]}"
        @user = params[:user] ? User.new(user_params) : User.new_guest
        if @user.save
            current_user.move_to(@user) if current_user && current_user.guest?
            session[:user_id] = @user.id
            redirect_to root_url
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
        @features = @user.features
    end

    def add_feature
        @user = User.find(session[:user_id])
        @features = @user.features
        @feature = Feature.find(params[:id])
        @features << @feature
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
