Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
           Rails42::Application.config.google_consumer_key,
           Rails42::Application.config.google_secret if Rails42::Application.config.google_consumer_key
end