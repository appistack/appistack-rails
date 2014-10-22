class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User

  #TODO: login with email or username
  # TODO: fix default="", null=false in migration for username/email ...
  validates :email, format: /@/
  validates :username, length: { in: 4..20, allow_blank: true }
end
