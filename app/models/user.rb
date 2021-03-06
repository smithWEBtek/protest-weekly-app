class User < ApplicationRecord
	has_secure_password

	validates :name, presence: true
  	validates :password, presence: true, length: { in: 6..64 }

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
  
	def self.from_omniauth(auth)
	  email = auth[:info][:email] || "#{auth[:uid]}@facebook.com"
	    @user = where(email: email).first_or_initialize
	    @user.password = SecureRandom.urlsafe_base64
	    @user.save && @user
	  end
	
 end



