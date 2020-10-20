class Listing < ApplicationRecord
    belongs_to :moviebox 
    belongs_to :movie 
    belongs_to :user 

    validates :moviebox_id, uniqueness: { scope: :movie_id }
end
