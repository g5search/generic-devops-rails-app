# Generic DevOps Testing Rails App

This is a Rails app built by the DevOps team as a testbed.

Testing with our real applications can be a hassle. You need a database, you don't really know which endpoints are safe and which aren't, and you're not familiar with how they're supposed to look. This app is dead simple but will (over time) have a easy way for DevOps to test that normal Rails functionality is working.

## Running Locally

If you have a Rails environment, do whatever you'd normally do. If not, you can install Docker Compose and:

```
docker-compose up -d
docker exec -it generic-devops-rails-app_rails_1 bash
```

To connect. At that point you probably want:

```
bundle
bundle exec rake db:setup
bundle exec rails s -b 0.0.0.0
```

The `-b` flag is required if you want to be able to visit `localhost:3000` and see your handiwork.

Use:

```
docker-compose down
```

to tear the environment down.
