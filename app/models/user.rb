class User < ApplicationRecord
	has_secure_password
	validates :name, presence: true
  	validates :password, length: { in: 6..20 }

  	has_many :event_users
	has_many :events, through: :event_users
	

	def event_users_attributes=(event_users_attributes)
		event_users_attributes.each do |event_user_attributes|
			self.event_users.build(event_user_attributes)
		end
	end

	def events_attributes=(events_attributes)
		events_attributes.each do |event_attributes|
			self.events.build(event_attributes)
		end
	end
	
	def self.from_omniauth(auth)
      auth.slice(:provider, :uid).to_h
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
 
	def self.from_omniauth(auth)
		@user = User.find_or_create_by(uid: auth['uid']) do |u|
	      u.name = auth['info']['name']
	      u.email = auth['info']['email']
	      u.image = auth['info']['image']
	  end
	end

	#   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	#     user.email = auth.info.email
	#     user.password = Facebook.friendly_token
	#     user.name = auth.info.name   # assuming the user model has a name
	#     user.image = auth.info.image # assuming the user model has an image
	#   end
	# end
end

