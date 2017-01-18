module SessionsHelper
    # Logs in the user
    def log_in(user)
        session[:user_id] = user.id
        # add if to log out guest then log in if guest signed in
    end

    # Remembers the user when they log in
    def remember(user)
        user.remember
        cookies.permanent.signed[:user_id] = user.id
        cookies.permanent[:remember_token] = user.remember_token
    end

    # Logs out the current user
    def log_out
        forget(current_user)
        session.delete(:user_id)
        @current_user = nil
    end

    # Forgets a persistent session.
    def forget(user)
        user.forget
        cookies.delete(:user_id)
        cookies.delete(:remember_token)
    end

    # Returns the current logged-in user (if any).
    def current_user
        if (user_id = session[:user_id])
            @current_user ||= User.find_by(id: user_id)
        elsif (user_id = cookies.signed[:user_id])
            user = User.find_by(id: user_id)
            if user && user.authenticated?(cookies[:remember_token])
                log_in user
                @current_user = user
            end
        # else log in guest user account in database; add Guest User to database
        else
            guest_user
        end
    end

    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil? && !current_user.guest?
    end

    private

        def guest_user
            @guest ||= Guest.new
        end
end
