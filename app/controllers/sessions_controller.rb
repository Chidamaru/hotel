class SessionsController < ApplicationController
    before_action :require_login, only: [:destroy]

    def new
    end
  
    def create
      login = Login.find_by(email: params[:email].downcase)
      if login && login.authenticate(params[:password])
        log_in(login)
        redirect_to profile_path(login)
      else
        flash.now[:danger] = 'メールアドレスかパスワードが間違っています。'
        render 'new'
      end
    end
  
    def destroy
      log_out if logged_in?
      redirect_to login_path
    end
end
