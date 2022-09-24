class LoginsController < ApplicationController
    def new
        @login = Login.new
      end
    
      def create
        @login = Login.new(user_params)
        if @login.save
          redirect_to profile_path(@login)
        else
          render 'new'
        end
      end
    
      def show
        @login = Login.find(params[:id])
      end
    
      def destroy
        login = Login.find(params[:id])
        login.destroy
        redirect_to signup_path
      end
    
      private
        def user_params
          params.require(:login).permit(:name, :email, :password, :password_confirmation)
        end
end
