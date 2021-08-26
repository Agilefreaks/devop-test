# devop-test
Simple Rails API that needs some devop stuff on it

## Prerequisites
- Have docker installed: https://letmegooglethat.com/?q=install+docker+on+ubuntu
- Have RVM installed: https://letmegooglethat.com/?q=install+rvm+on+ubuntu

## Running the db server (Postgresql)
`$ docker run --name devop-postgres -e POSTGRES_PASSWORD=devop_test -d -p 5432:5432 postgres`

## Local setup
1. Install ruby: `$ rvm install 3.0.2`
2. `$ cd .` or `$ cd <path_to_project>` to auto-create the rvm gemset
3. Install the dependencies: `$ bundle install`
4. Setup development & test DBs: `$ rails db:setup`
5. Fill with some data: `$ rails db:seed`

## Development
1. Ensure the db is running on port 5432
2. Start the app: `$ rails s`
3. Test/play with: `$ curl -v http://localhost:3000/ping; echo`

## Test
1. Ensure the db is running on port 5432
2. `$ rspec`

## Check code styling/linting
`$ rubocop`

### Notes
> Database credentials are set in config/database.yml, but
> Rails can take also the db connection string from DATABASE_URL env variable