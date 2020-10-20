class Movie < ApplicationRecord
    has_many :listings 
    has_many :movieboxes, through: :listings 
    has_many :users, through: :listings 
    has_many :movie_genres
    has_many :genres, through: :movie_genres

    validates :title, presence: true
    validates :description, presence: true

    def genres_attributes=(genre_attributes)
        genre_name = genre_attributes["0"]["name"]
        unless genre_name.blank?
          genre = Genre.find_or_create_by(name: genre_name)
          self.genres << genre
        end
    end


    def movies_movieboxes_by_user(user_id)
        self.listings.where(user_id: user_id)
    end

    def self.favorites
        includes(:listings).where(:listings => { favorite: true })
    end
    

    

    # def self.favorite
    #   User.self.includes(:listings).where(:listings => { favorite: true })
    # end
    
end
