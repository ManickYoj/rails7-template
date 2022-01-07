# README
The rails-core is a pre-configured rails 7 app with the default add-ons I currently prefer for new apps. That list is presently:
* Postgres
* Devise auth, with sign-in/up/out, email validation, reset password, and user and admin controllers
* Tailwind UI

## Dependencies
* Ruby version: 3.01
* System dependencies: ruby, rails, postgres

## Setup
1. Fork this repo into a new project, then clone and download it.
2. Run `rake db:setup` to create, migrate, and seed test & dev databases


3. When you're ready to setup a production database, delete the `production.yml.enc` file in credentials if one exists. Then create your own via `EDITOR=vim rails credentials:edit -e production`. The final file should have the shape:

```
postgres:
  host: <eg. 127.0.0.1>
  username: <eg. rails_core_developer>
  password: <eg. 1234>
```

## Future topics, if relevant
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
