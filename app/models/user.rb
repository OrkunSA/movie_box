class User < ApplicationRecord
    has_many :movieboxes
    has_many :listings 
    has_many :movies, through: :listings

    
    has_secure_password

    def favorite_shows
        # List the user's shows where fav is true
        self.movies.includes(:listings).where(:listings => { favorite: true }).uniq
    end
end
