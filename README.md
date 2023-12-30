# README

- Ruby version
  3.0.3

- System dependencies
  Ruby
  Rails
  Postgres

- Configuration

- Database creation
  `rails db:setup` OR `bin/setup`

- Database initialization
  `rails db:setup` OR `bin/setup`

- How to run the test suite
  `rails test` runs integration tests
  `rails test:system` runs system (E2E) tests

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions
  On merge to the github Repo a deploy is triggered.
  You can manually trigger a deploy buy running `fly login` and `fly deploy` and then visit the app with `fly apps open`.

The Deployed app can be viewed at https://wrestling-manager.fly.dev/
