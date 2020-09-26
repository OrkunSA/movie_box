class GenresController < ApplicationController
    before_action :require_login

    def index
      @genres = Genre.all
    end
  
    def show
      @genre = Genre.find_by(id: params[:id])
      @movies = @genre.movies
    end
end
