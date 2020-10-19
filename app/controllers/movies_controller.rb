class MoviesController < ApplicationController
    before_action :require_login
    before_action :set_movie, only: [:show, :edit, :update]
    helper_method :current_user

    def index 
        @user = User.find_by(id: params[:user_id])
        if @user 
            @movies = @user.favorite_movies.uniq
        else
            @movies = Movie.all 
        end
    end


    def show 
        @listings = @movie.movies_movieboxes_by_user(current_user.id)
    end

    def new 
        @movie = Movie.new 
        @listings = @movie.listings.build
    end

    def create 
        @movie = Movie.new(movie_params)
        if @movie.save 
            flash[:message] = "#{@movie.title} has been created!"
            redirect_to movie_path(@movie)
        else 
            render :new 
        end
    end

    def update 
        @movie.update(movie_params)
        if @movie.save 
            flash[:message] = "#{@movie.title} has been updated"
            redirect_to movie_path(@movie)
        else
            render :edit 
        end
    end

    private 

    def movie_params 
        params.require(:movie).permit(:title,
                                      :description,
                                      :year,
                                      :director,
                                      genre_ids:[],
                                      genres_attributes:[:name])
    end

    def set_movie 
        @movie = Movie.find_by(id: params[:id])
    end

    
end
