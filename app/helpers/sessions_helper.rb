module SessionsHelper
    def log_in(login)
        session[:login_id] = login.id
      end
    
      def current_user
        if session[:login_id]
          @current_user ||= Login.find_by(id: session[:login_id])
        end
      end
    
      def logged_in?
        !current_user.nil?
      end
    
      def require_login
        redirect_to login_path if !logged_in?
      end
    
      def log_out
        session.delete(:login_id)
        @current_user = nil
      end
end
