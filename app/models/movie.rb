class Movie < ApplicationRecord
    has_many :listings 
    has_many :movieboxes, through: :listings 
    has_many :users, through: :listings 
    has_many :movie_genres
    has_many :genres, through: :movie_genres
    
end
