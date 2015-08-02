# Appistack Rails 4.2

A Rails 4.2 API-only stack.

## Running the API

```shell
bundle install
rake db:create
rake db:migrate
rails s
```

## Running Unit Tests

Integration tests are expected to be in the client application or set up in a separate project.

```shell
rake spec
```

## Deploying to Heroku

Heroku has some great guides on [deploying Rails 4.x applications](https://devcenter.heroku.com/articles/getting-started-with-rails4#deploy-your-application-to-heroku).
Start in the "Deploy Your Application To Heroku" section.  Additionally, you'll need to configure Heroku's Sendgrid addon 
in order for your API to send registration and password reset emails.

1. Create a Heroku Account if you don't have one and install the heroku command line toolbelt.
1. In the root of appistack-rails, run `heroku create [myappname]` to create a new heroku app.
  - If you instead use the Heroku web interface to create your app, you'll need to add the heroku git remote.
1. In the Heroku web interface, open your application and click settings.  Under Config Variables, click show.
  - Now click edit and add the name/value for the environment vars documented below.
  - You can also set these environment variables on the command line.  Run `heroku config --help` for more information.
1. Run `heroku addons:create sendgrid:starter` to add the Heroku Sendgrid addon.
  - If you don't configure Sendgrid with the SMTP environment vars below, then your users will never receive their confirmation emails.
  - Alternatively, you can create your own Sendgrid account, but you'll need to go through the Sendgrid account/domain verification process.
1. Deploy your app with `git push heroku master`
1. Run `heroku run rake db:migrate` on your initial deploy.
1. Run `heroku open` to view your running API in the browser.
  - If you've deployed a client app to Divshot and configured `RAILS42_CLIENT_APP_URL`, you'll be redirected there.  

## Environment Vars

This project uses the dotenv gem to manage environment variables.  Any vars listed in the `.env` file will be
loaded right before the content of `Rails42::Application` in `config/application.rb` is processed.  In staging
and production environments, you'll need to make sure these vars are set.

Here's a list of environment vars you'll need to configure when running your app outside of development.  Most of these have a
default value in development, but need to be configured for Staging/Production.  Configuring these values in environment
variables avoids the need to have them in source control.  It is also very useful when distributing your services in containers.
When adding services like Redis/Mongo to your application, ensure all configuration parameters are exposed as
environment variables, especially for staging and production.  

- `RAILS_ENV` - automatically configured by Heroku.
- `RAKE_ENV` - automatically configured by Heroku.
- `RAILS42_DEVISE_SECRET_KEY` - Generate a new secret key with `rake secret`
- `SECRET_KEY_BASE` - Again, generate a new secret key with `rake secret`.  
  - This key is used in `config/secrets.yml` and is automatically configured by Heroku.
- `RAILS42_CLIENT_APP_URL` - The URL to redirect users to when they try to access the api directly
- `RAILS42_CORS_ORIGINS` - Acceptable CORS origins for the API.  Configured in `config/application.rb`

#### ActionMailer Config

Emails your application sends will use these values to generate links pointing back into your application.

- `RAILS42_ACTION_MAILER_URL_HOST` 
- `RAILS42_ACTION_MAILER_URL_PORT`

#### Sendgrid Config

When you set up Sendgrid or another SMTP service, configuration goes here.  

- `RAILS42_SMTP_ADDRESS`
- `RAILS42_SMTP_HELO_DOMAIN`
- `RAILS42_SMTP_USERNAME`
- `RAILS42_SMTP_PASSWORD`

Note: if you have your own Sendgrid account, use the credentials you use login there.  If you use the Heroku addon, which
is much simpler and automatically creates it's own Sendgrid account, then you'll need to find your Sendgrid credentials on Heroku. 
You can retrieve your Sendgrid addon username/password by opening your application on Heroku and clicking on the Sendgrid addon.  
The Heroku support article states that you'll need to add the `SENDGRID_USERNAME` & `SENDGRID_PASSWORD` environment variables.  However,
you'll actually set `RAILS42_SMTP_USERNAME` & `RAILS42_SMTP_PASSWORD`, since that's what's listed in your `application.rb` SMTP configuration. 

#### OAuth Config

Google OAuth app in `config/initializers/omniauth.rb` will only be initialized if `RAILS42_GOOGLE_CONSUMER_KEY` has a value

- `RAILS42_GOOGLE_CONSUMER_KEY` - Consumer Key for your Google OAuth app
- `RAILS42_GOOGLE_SECRET`

## License

[MIT License](http://dcunited001.mit-license.org)