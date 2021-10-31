# devop-test
Simple Rails API that needs some devop stuff on it

## Prerequisites
- Have RVM installed: https://letmegooglethat.com/?q=install+rvm+on+ubuntu

## Local setup
1. Install ruby: `$ rvm install 3.0.2`
2. `$ cd .` or `$ cd <path_to_project>` to auto-create the rvm gemset
3. Install the dependencies: `$ bundle install`
4. Ensure the db is running on port 5432
5. Setup development & test DBs: `$ rails db:setup`
6. Fill with some data: `$ rails db:seed`

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
