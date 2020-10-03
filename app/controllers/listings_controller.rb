class ListingsController < ApplicationController
    before_action :require_login
    before_action :set_listing, only: [:edit, :update, :destroy]

    def new 
        @listing = Listing.new 
        @listing.movie = Movie.find_by(id: params[:movie_id])
    end

    def create 
        @listing = Listing.new(listing_params)
        @listing.movie = Movie.find_by(id: params[:movie_id])
        if @listing.save
            flash[:message] = "#{@listing.movie.title} has been added to your moviebox"
            redirect_to movie_path(@listing.movie)
        else
            render :new 
        end
    end

    def edit 
    end

    def update 
        @listing.update(listing_params)
        if @listing.save
            flash[:message] = "#{@listing.movie.title} listing has been updated"
            redirect_to movie_path(@listing.movie)
        else
           render :edit 
        end
    end

    def destroy 
        if @listing
            @listing.destroy
            flash[:message] = "The movie has been removed from your moviebox"
            redirect_to movieboxes_path
        else
            flash[:danger] = "The movie could not be removed"
            render 'movies/show'
        end
    end

    private 
    def listing_params
        params.require(:listing).permit(:moviebox_id, :user_id, :user_status, :favorite)
    end

    def set_listing 
        @listing = Listing.find_by(id: params[:id])
    end

end
