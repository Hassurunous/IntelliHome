module SessionsHelper
    # Logs in the user
    def log_in(user)
        session[:user_id] = user.id
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
        puts "session[:user_id] = #{session[:user_id]}"
        if (user_id = session[:user_id])
            @current_user ||= User.find_by(id: user_id)
        elsif (user_id = cookies.signed[:user_id])
            user = User.find_by(id: user_id)
            if user && user.authenticated?(cookies[:remember_token])
                log_in user
                @current_user = user
            end
        end
    end

    def create_guest_user
        u = User.new(first_name: "Guest", email: "guest_#{Time.now.to_i}#{rand(99)}@bogus.com")
        u.save!(validate: false)
        session[:guest_user_id] = u.id
        u
    end

    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        !current_user.nil? && !current_user.guest?
    end
end
