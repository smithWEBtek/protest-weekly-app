class User < ApplicationRecord
	has_secure_password
	#validate email
	#validate cell phone
	has_many :events

end
