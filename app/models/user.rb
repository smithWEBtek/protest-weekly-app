class User < ApplicationRecord
	has_secure_password
	validates :name, presence: true
  	validates :password, presence: true, length: { in: 6..20 }

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
 	
	# def facebook_login
 #    	@user = User.find_or_create_by(uid: auth['uid']) 
 #      u.name = auth['info']['name']
 #      u.email = auth['info']['email']
 #      u.image = auth['info']['image']
 #    end
        # user.provider = auth.provider
 end



