class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to root_url, notice: 'Logged in!'
    else
      #Create an error message
      flash.now.alert = 'Invalid email/password combination'
      render :new
    end
  end

  def destroy
      log_out # if logged_in?
      redirect_to root_url, notice: 'Logged out!'
  end

end
