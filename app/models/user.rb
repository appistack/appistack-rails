class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  rolify

  # TODO: login with email or username
  validates :email, format: /@/
  validates :username, length: { in: 4..20, allow_blank: true }
end
