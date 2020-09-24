class SessionsController < ApplicationController
    helper_method :logged_in?, :current_user
    layout "static"
  
    def new
      if logged_in?
        redirect_to user_movieboxes_path(current_user)
      end
    end
  
    def create
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:notice] = "You have succesfully logged in!" 
        redirect_to user_movieboxes_path(user)
      else
        flash[:danger] = "Wrong email and/or password"
        render :new
      end
    end

    def destroy
      if logged_in?
      session.delete :user_id
      redirect_to controller: 'pages', action: 'home'
      end
    end
    
end
