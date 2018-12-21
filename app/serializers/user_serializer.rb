class UserSerializer < ActiveModel::EventSerializer
	attributes :id, :name, :password_digest, :cell_phone, :email, :uid, :image
	has_many :happenings
	has_many :events, through: :happenings
end