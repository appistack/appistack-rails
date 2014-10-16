# Rails 42

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

## Environment Vars

This project uses the dotenv gem to manage environment variables.  Any vars listed in the `.env` file will be
loaded right before the content of `Rails42::Application` in `config/application.rb` is processed.  In staging
and production environments, you'll need to make sure these vars are set.
