class Listing < ApplicationRecord
    belongs_to :moviebox 
    belongs_to :movie 
    belongs_to :user 
end
