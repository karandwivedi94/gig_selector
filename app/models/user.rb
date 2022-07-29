class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_many :gigs
end

#User can create multiple gigs
#Must have valid and unique email + secure password