class User < ApplicationRecord
	has_secure_password
	validates :name, presence: true
	validates_uniqueness_of :email
  	validates :password, length: { in: 6..20 }

  	has_many :event_users
	has_many :events, through: :event_users
	

	def event_users_attributes=(event_users_attributes)
		event_users_attributes.each do |event_user_attributes|
			self.event_users.build(event_user_attributes)
		end
	end

	def events_attributes=(events_attributes)
		events_attributes.each do |events_attributes|
			self.events.build(event_attributes)
		end
	end
	
	# def self.from_omniauth(auth)
 #      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
 #      user.provider = auth.provider
 #      user.uid = auth.uid
 #      user.name = auth.info.name
 #      user.oauth_token = auth.credentials.token
 #      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
 #      user.save!
 #    end
  # example from has-many-through-forms-rails-labs-v-000
  # has_many :comments
  # has_many :posts, through: :comments


  end
