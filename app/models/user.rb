class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  validates :username, length: { in: 4..20 }, uniqueness: true, presence: true
  validates :email, format: /@/, uniqueness: true, presence:true

  #TODO: login with email or username
end
