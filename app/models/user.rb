class User < ApplicationRecord
	has_secure_password
	validates_uniqueness_of :email
	has_many :events
	has_many :organizations, through: :events
	


#User model should have four attributes, all strings: name, email, image, and uid (the user's ID on Facebook)

end
