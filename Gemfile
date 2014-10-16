source 'https://rubygems.org'

gem 'rails', github: "rails/rails"
gem 'devise', '~> 3.4.0'
gem 'devise_token_auth', '~> 0.1.29'
gem 'omniauth', '~> 1.2.2'
gem 'omniauth-google-oauth2'

gem 'pg'
gem 'jbuilder', '~> 2.0'

gem 'rack-cors', '~> 0.2.9'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

gem 'capistrano-rails', group: :development

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'dotenv-rails'
  gem 'byebug'
  gem 'web-console', '~> 2.0.0.beta4'
  gem 'spring'
end

group :test do
  gem 'minitest', '~> 5.4.2'
  gem 'minitest-focus'
  gem 'minitest-spec-rails'
  gem 'minitest-metadata', '~> 0.5.3'
  gem 'mocha'
  gem 'database_cleaner', '~> 1.2.0'
end