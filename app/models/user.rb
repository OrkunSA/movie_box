class User < ApplicationRecord
    has_many :movieboxes
    has_many :listings 
    has_many :movies, through: :listings

    
    has_secure_password
end
