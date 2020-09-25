class MovieboxesController < ApplicationController
    before_action :require_login 
    before_action :set_user_moviebox, only: [:show, :edit, :update, :destroy]
    before_action :set_user

    def index 
        @movieboxes = current_user.movieboxes 
        @favorites = current_user.favorite_shows 
    end

    def new 
        @moviebox = Moviebox.new 
    end

    def create 
        @moviebox = @user.movieboxes.build(moviebox_params)
        if @moviebox.save 
            redirect_to moviebox_path(@moviebox)
            flash[:message] = "New Moviebox Has Been Created!"
        else 
            render :new 
        end
    end

    def show 
        @movies = @moviebox.movies 
    end

    def edit 
    end

    def update 
        @moviebox.update(moviebox_params)
        if @moviebox.save 
            redirect_to moviebox_path(@moviebox)
            flash[:message] = "#{@moviebox.name} has been updated!"
        else 
            render :edit 
        end
    end

    def destroy 
        if @moviebox 
            @moviebox.destroy 
            redirect_to movieboxes_path 
            flash[:message] = "Your moviebox has been removed!"
        else 
            render :show 
            flash[:danger] = "This moviebox could not be deleted"
        end
    end

    private 
    def moviebox_params 
        params.require(:moviebox).permit(:name, :description, :user_id)
    end

    def set_user_moviebox 
        @moviebox = Moviebox.find_by(id: params[:id])
        unless @moviebox.user == current_user
            flash[:danger] = "This is not your moviebox!"
            redirect_to movieboxes_path 
        end
    end

    def set_user 
        @user = User.find_by(id: params[:user_id])
    end
end
