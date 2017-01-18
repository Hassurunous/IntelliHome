module ListsHelper
    def current_list
        @user = session[:user_id]
        if session[:list_id]
            @current_list ||= List.find(session[:list_id])
        elsif session[:list_id].nil?
            @current_list = List.create(user: current_user)
            session[:list_id] = @current_list.id
        end
        @current_list
    end
end
