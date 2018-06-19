class User < ApplicationRecord
	has_secure_password
	#validate email
	#validate cell phone
	has_many :events

#User model should have four attributes, all strings: name, email, image, and uid (the user's ID on Facebook)

end
