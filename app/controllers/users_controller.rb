class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        # Validation of form fields handled with jQuery Validation plugin
        if @user.save
            log_in @user
            flash[:success] = 'User created successfully.'
            redirect_to @user
        else
            render 'new'
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
