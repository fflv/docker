FROM ruby:2.7

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential \
	libpq-dev nodejs libpq-dev

# Set an environment variable where the Rails app is installed to inside of Docker image:
ENV RAILS_ROOT /var/www/redmine
RUN mkdir -p $RAILS_ROOT

# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

# Setting env up
ENV RAILS_ENV='production'
ENV RACK_ENV='production'

# Adding project files
COPY . .

# Adding gems
# COPY Gemfile Gemfile
# COPY Gemfile.local Gemfile.local
# COPY Gemfile.lock Gemfile.lock
ENV BUNDLER_WITHOUT="development test"
RUN bundle install --jobs 20 --retry 5
RUN bundle exec rake generate_secret_token

# EXPOSE 3000
# CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
CMD ["puma", "-e", "production", "-p", "3000"]