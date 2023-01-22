# choose the desired base image
FROM ruby:3.0.2

# throw errors if Gemfile has been modified since Gemfile.lock
RUN apt-get update -qq && apt-get install -y postgresql-client

RUN bundle config --global frozen 1

# set up work directory
WORKDIR /usr/src/app

# adding Gemfile and Gemfile.lock to the work directory
COPY Gemfile Gemfile.lock ./

COPY . .

# install dependencies
RUN bundle install 


# define entrypoint
ENTRYPOINT ["bin/rails"]

# set up port
EXPOSE 3000

# define executable command
CMD ["rails", "s", "-b", "0.0.0.0"]