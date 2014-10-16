Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,
           Rails42::Application.config.twitter_consumer_key,
           Rails42::Application.config.twitter_secret if Rails42::Application.config.twitter_consumer_key
end