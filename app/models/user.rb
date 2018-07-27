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
 	
	# def self.from_omniauth(auth)
	# 	email = auth[:info][:email] || "#{auth[:uid]}@facebook.com"
 #     	@user = where(email: email).first_or_initialize
 #     	@user.save && user
 #     end
     	# @user = User.find_or_create_by(uid: auth['uid']) do |u|
      #   u.name = auth['info']['name']
      #   u.email = auth['info']['email']
      #   u.image = auth['info']['image']
        


   private

  	def self.find_or_create_by_omniauth(auth_hash)
  	  self.where(email: auth_hash[‘info’][‘email’]).first_or_create do |u|
	  u.name = auth_hash[‘info’][‘name’]
	  u.password = SecureRandom.hex
	  end
	end
	# def self.from_omniauth(auth)
 #      @user = User.find_or_create_by(uid: auth[:uid]) do |u|
 #      u.name = auth[:info][:name]
 #      u.email = auth[:info][:email]
 #      u.image = auth[:info][:image]
 #      # @user.save
 #     end
 # 	end 

 end



