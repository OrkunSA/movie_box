class User < ApplicationRecord
    has_many :movieboxes
    has_many :listings 
    has_many :movies, through: :listings
    validates :email, presence: true 
    validates :username, presence: true 
    has_secure_password

    def favorite_shows
        # List the user's movies where favorite is true
        self.movies.includes(:listings).where(:listings => { favorite: true }).uniq
    end
end
