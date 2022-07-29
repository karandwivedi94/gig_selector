class Artist < ApplicationRecord
    has_and_belongs_to_many :gigs, :optional => true
end

#One artist can play at many gigs. 
#One gig can have multiple artists
