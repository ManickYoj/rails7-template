# README
The rails-core is a pre-configured rails 7 app with the default add-ons I currently prefer for new apps. That list is presently:
* Postgres
* Devise authentication. Includes:
  * Sign-in/up/out
  * Email validation
  * Password reset
  * Separate authenticated controllers for standard users and admins
* Tailwind UI

## Dependencies
* Ruby version: 3.0.1p64
* System dependencies: ruby, rails, postgres

## Setup
1. Fork this repo into a new project, then clone and download it.
2. Run `rake db:setup` to create, migrate, and seed test & dev databases
3. Delete the `/config/credentials/.gitignore` file. This will allow your encrypted config files to be commited with git. Don't worry: the top-level `.gitignore` still includes ignoring the test, development, and production keys from the credentials folder!

4. When you're ready to setup a production database create a `/config/credentials/production.yml.enc` file (and key) via `EDITOR=vim rails credentials:edit -e production`. The final file should look like the following but include your production database creds:

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
