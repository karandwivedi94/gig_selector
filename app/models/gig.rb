class Gig < ApplicationRecord
    belongs_to :user, :optional => true
    has_and_belongs_to_many :artists
end

#A gig can have only ONE user
#A gig can have multiple artists and vice versa