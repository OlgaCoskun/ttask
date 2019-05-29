## test_task app
***

Create import any commits from [Github.com](https://github.com)

### Launching
***

##### Requirements:

* Ruby version _>= 2.6.3_

* Rails version _~> 5.2.0_


##### Commands
Clone the repository to your local machine.

Also install Postgres and Docker. Follow the official sites.

Command for install Gems from Gemfile:

```
$ bundle install
```

Use the command for create DB:

```
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```

Start docker:
```
docker-compose up
```

Then open a `localhost:3000` page in your browse
