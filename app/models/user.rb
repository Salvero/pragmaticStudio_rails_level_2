class User < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true,
										format: /\A\S+@\S+\z/,
										uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 10, allow_blank: true }

  has_secure_password
end
