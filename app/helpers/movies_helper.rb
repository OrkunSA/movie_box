module MoviesHelper
    def moviebox_options(listings, movie)
        if @listings.count > 0
          render :partial => "listings/details", :locals => {:listings => listings, :movie => movie}
        else
          "None"
        end
    end
end

