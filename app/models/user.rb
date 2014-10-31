class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  rolify

  # TODO: login with email or username
  validates :email, format: /@/
  validates :username, length: { in: 4..20, allow_blank: true }

  def as_json(opts = nil)
    # doing it this way because i don't want implementation-specific view models
    super.merge(roles: global_roles.map {|r| {name: r.name} })
  end

  def global_roles
    self.roles.where(resource_type: nil)
  end
end
