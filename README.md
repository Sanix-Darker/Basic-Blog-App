# Basic-Blog-App

This is just a simple RoR (Ruby on rails project) (no css) to manage a CRUD of articles and their comments with HTTP-Basic authentification

## To Install

You just have to run :
- Start with migrations on all dbs environment
```shell
rails db:migrate RAILS_ENV=development

rails db:migrate RAILS_ENV=test

rails db:migrate RAILS_ENV=production
```

- Run the bundler:
```shell
bundle install
```

## To Start it
You just have to launch the server:
```shell
rails server
```

The server is running here:
```shell
http://localhost:3000/
```

## Author
- Sanix-darker
