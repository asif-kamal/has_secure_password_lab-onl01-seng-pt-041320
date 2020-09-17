class UsersController < ApplicationController

    def index
    end

    def new
        
    end



    
    def create
        @user = User.create(user_params)
        session[:user_id] = @user.id
        
        #if !session[:user_id] = @user.id
            return redirect_to(controller: "users", action: "new") unless @user.save
        #end
        redirect_to users_show_path
        
      end

      def show
        
        @user = User.find_by(id: session[:user_id])
      end
     
      private
     
      def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end
    
    
end