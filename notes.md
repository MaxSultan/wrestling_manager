# What is an association in rails and how do i create one in a generator?

https://stackoverflow.com/questions/58401309/how-do-i-specific-belongs-to-and-has-many-relationships-when-generating-new-mode

The arguments for the model generators are attributes of the model. blog_id is an actual attribute backed by a database column.

has_many is not an attribute. It's a metaprogramming method which adds a posts method to your Blog instances. You need to add it manually to the model.

# Issues with Github action CI

## Fails with Exit Code 16

https://stackoverflow.com/questions/72331753/ruby-and-rails-github-action-exit-code-16

## PG connection issue

/home/runner/work/wrestling_manager/wrestling_manager/vendor/bundle/ruby/3.0.0/gems/activerecord-7.0.8/lib/active_record/connection_adapters/postgresql_adapter.rb:87:in `rescue in new_client': connection to server on socket "/var/run/postgresql/.s.PGSQL.5432" failed: No such file or directory (ActiveRecord::ConnectionNotEstablished)

Solution was to add env variables to CI/.yml file

```yml
jobs:
  test:
    runs-on: ubuntu-latest
    services:
      redis:
        image: redis:6.2-alpine
        ports:
          - "6379:6379"
      postgres:
        image: postgres:11-bullseye
        ports:
          - "5432:5432"
        env:
          POSTGRES_DB: rails_test #  this one
          POSTGRES_USER: rails #  this one
          POSTGRES_PASSWORD: password #  this one
    env:
      RAILS_ENV: test #  this one
      DATABASE_URL: "postgres://rails:password@localhost:5432/rails_test" #  this one
```

## asset pipeline cant find tailwind

ActionView::Template::Error: The asset "tailwind.css" is not present in the asset pipeline.

add this to CI

```yml
- name: Precompile assets
  run: bundle exec rake assets:precompile
```
