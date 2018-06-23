class User < ApplicationRecord
	has_secure_password

	validates :name, presence: true

	validates_uniqueness_of :name
	# validates :email, uniqueness: true, on: :create
	has_many :events
	has_many :organizations, through: :events


	# def self.from_omniauth(auth)
 #      where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
 #      user.provider = auth.provider
 #      user.uid = auth.uid
 #      user.name = auth.info.name
 #      user.oauth_token = auth.credentials.token
 #      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
 #      user.save!
 #    end
  


  end
