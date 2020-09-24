class UsersController < ApplicationController
    helper_method :logged_in?, :current_user
    layout 'static'

    def new 
        @user = User.new 
    end

    def create 
        @user = User.new 
        if @user.valid? 
            session[:user_id] = @user.id 
            redirect_to user_movieboxes_path(@user)
        else
            render :new 
        end
    end

    



end
