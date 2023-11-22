## MS_TEMPLATE
App template for Microservices.


### Components
- Ruby 3.1.0
- Rails 7.0
- Rspec
- Rail_Admin


### ENV VARS
The file `.env.example` contains the ENV VARS required for this app.
Rename the `.env.example` file to `.env` and replace any ENV VARS value you need.

**Please add in `.env.example` any new ENV VARS.**


### Install Instructions

#### LOCAL
- Install the Ruby Version above mentioned.
- Install the PostgreSQL Database Service.
- Clone this repo.
- In a terminal, go to the root folder of this repo and run `bundle install`
- Rename the `.env.example` file to `.env` and replace any ENV VARS value you need (Database credentials for example).
- Run `bin/rails db:create` for database creation.
- Run `bin/rails s` to run the app. this will listen on port 3000 by default. can be changed in `.env` file.

### Linters/analyzers

#### Rubocop
This project uses rubocop as code analyzer and and code formatter, you can run rubocop with:
```
$ cd path/to/this/project
$ rubocop
```

For auto-correct offenses you can run (this will only correct safe offenses):
```
$ rubocop -a
```

### Brakeman
This project uses brakeman as security vulnerability scanner, you can run brakeman with:
```
$ cd path/to/this/project
$ brakeman
```

You can generate HTML report with:
```
$ brakeman -o report.html
```

### API Documentation

#### ApiPie
This project uses `apipie-rails` gem for api documentation. You can generate the documentation with the command:

```
$ bin/rake apipie:static
```
This documentation will be saved in `doc` folder
