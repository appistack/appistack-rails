class User < ActiveRecord::Base
  include DeviseTokenAuth::Concerns::User
  include Gravtastic

  rolify
  gravtastic d: :retro

  # TODO: login with email or username
  validates :email, format: /@/
  validates :username, length: { in: 4..20, allow_blank: true }

  def as_json(opts = nil)
    # doing it this way because i don't want implementation-specific view models
    # NOTE: do not modify this method.  remove it and use something for view models.
    #   changes to as_json will change Devise's responses, possibly exposing secure user data
    #   data such as email/uid will be included when user model is nested within other models
    # .... so change it!
    super.merge(gravatar_url: gravatar_url, roles: global_roles.map {|r| {name: r.name} })
  end

  def global_roles
    self.roles.where(resource_type: nil)
  end
end
