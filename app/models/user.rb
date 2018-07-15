class User < ApplicationRecord
	has_secure_password
	validates :name, presence: true
  	validates :password, length: { in: 6..20 }

  	has_many :happenings
	has_many :events, through: :happenings
	

	def happenings_attributes=(happenings_attributes)
		happenings_attributes.each do |happening_attributes|
			self.happenings.build(happening_attributes)
		end
	end

	def events_attributes=(events_attributes)
		events_attributes.each do |event_attributes|
			self.events.build(event_attributes)
		end
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
  



