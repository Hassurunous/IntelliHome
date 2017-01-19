class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper
    helper_method :current_user
    before_action :create_guest_if_needed

    def create_guest_if_needed
        return if session[:user_id] # already logged in, don't need to create another one
        @user = create_guest_user
        @user.save
        session[:user_id] = @user.id
      # do anything else you need here...
      puts @user.id
    end
end
