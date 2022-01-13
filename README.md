# README
This is a pre-configured rails 7 app with some additional libraries and config that I prefer as a generic foundation for new apps. Those are:
* [Postgres](https://github.com/ged/ruby-pg) as my preferred SQL database implementation
* [Devise](https://github.com/heartcombo/devise) authentication (which - as of time of writing - is a bit of a trick to get integrated with Rails 7 due to Turbo. I wrote a [short article](https://medium.com/@nickfrancisci/devise-auth-setup-in-rails-7-44240aaed4be) about it here. Anyhow, this setup includes:
  * Sign-in/up/out
  * Email validation
  * Password reset
* [Tailwind UI](https://tailwindcss.com/) a utility CSS framework
* [FactoryBot](https://github.com/thoughtbot/factory_bot_rails) which makes fixturing for tests a whole lot easier
* [Audited](https://github.com/collectiveidea/audited) which - when enabled for a model - builds a history of each mutation to a database row
* [Annotate](gem 'annotate') which adds comments outlining the schema to models and model tests

## Dependencies
* Ruby version: 3.0.1p64
* System dependencies: ruby, rails, the foreman gem (installed locally), postgres, node (12+), and yarn must be installed on the system.

## Setup
1. Copy this template, clone it, and download it.
2. Run `rake db:setup` to create, migrate, and seed test & dev databases
3. Delete the `/config/credentials/.gitignore` file. This will allow your encrypted config files to be commited with git. Don't worry: the top-level `.gitignore` still includes ignoring the test, development, and production keys from the credentials folder!
4. Create test/dev/production credential files. Without one for each environment you use, you'll get a NoMethodError when executing in that environment because ERB will try to load in a key from it's environment's credentials file. To do this, create a `/config/credentials/<environment>.yml.enc` file (and key) via `EDITOR=nano rails credentials:edit -e <environment>`. The final file should look like the following but include your creds or an empty key if you don't need creds for that environment:

```
postgres:
  host: <eg. 127.0.0.1>
  username: <eg. rails_core_developer>
  password: <eg. 1234>
```

## Running the server
```
# Run postgres
sudo service postgresql start

# Build the front-end assets. If you're messing with the CSS, you'll probably
# need to run this and reload the server to view your changes. This is a pain.
# I can't figure out how to recompile automatically in dev or include all the
# tailwind classes in dev only.
rails assets:precompile

# Run the server
rails s

# If working on CSS, just do both
rails assets:precompile && rails s
```

If you change the CSS or Javascript, you'll likely need to rebuild the assets before running the server.

## Running the test suite
```
bundle exec rspec
```

## Future topics, if relevant
* Configuration
* Database creation
* Database initialization
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions