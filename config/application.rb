require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rails42
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.serve_static_assets = false

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.action_mailer.default_url_options = {
      host: ENV.fetch('RAILS42_ACTION_MAILER_URL_HOST', 'localhost'),
      port: ENV.fetch('RAILS42_ACTION_MAILER_URL_PORT', '3000'),
    }

    config.devise_secret_key = ENV.fetch('RAILS42_DEVISE_SECRET_KEY', '7f007af08e2a2831cd848659c849cdea68b3f92eebe391d3e41bc94f24e1d145e1de9ef5cbfd586a7726bd8f070b438c6d40550887982f6c2931d50f792c7771')
    config.client_app_url = ENV.fetch('RAILS42_CLIENT_APP_URL', 'http://localhost:8000/')

    # twitter keys - configure these in .env file,
    #   or twitter oauth functionality will not be configured
    config.twitter_consumer_key = ENV.fetch('RAILS42_TWITTER_CONSUMER_KEY', nil)
    config.twitter_secret = ENV.fetch('RAILS42_TWITTER_SECRET', nil)
  end
end
