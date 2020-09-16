class SessionsController < ApplicationController
    def new
        
    end

    def create
        @user = User.find_by(name: params[:user][:name])
        if  @user && @user.authenticate(params[:user][:password])
        
            session[:user_id] = @user.id
            #where to redirect
        else
            #where to redirect if user is not found
        end
        #return head(:forbidden) unless @user.authenticate(params[:password])
        #session[:user_id] = @user.id
      end
end