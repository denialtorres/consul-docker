# # Dockerfile for a Rails application using Nginx and Puma
#
# # Select ubuntu as the base image
# FROM coreapps/ruby2.3
#
# # Install nginx, nodejs, and curl
# RUN apt-get update -q
# RUN apt-get install -qy nginx
# RUN apt-get install -qy curl
# RUN apt-get install -qy nodejs
# RUN apt-get install -y --force-yes libpq-dev
# RUN echo "daemon off;" >> /etc/nginx/nginx.conf
#
# RUN chown -R www-data:www-data /var/lib/nginx
#
# # Install foreman
# RUN gem install bundler
# RUN gem install foreman
# RUN gem install rails -v 4.2.9
#
# # Add configuration files in repository to filesystem
# ADD config/container/nginx-sites.conf /etc/nginx/sites-enabled/default
#
# # Add rails project
# ADD ./ /rails
#
# # set WORKDIR
# WORKDIR /rails
#
# ENV RAILS_ENV production
# ENV PORT 8080
#
# # bundle install
# RUN /bin/bash -l -c "bundle install --jobs 20 --retry 5"
#
# # Publish Port 8080
# EXPOSE 8080
#
# # Startup commands
# CMD bundle exec rake db:create db:migrate
# CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

# # Select ubuntu as the base image
FROM coreapps/ruby2.3

# Install essential Linux packages
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev postgresql-client nodejs



# Define where our application will live inside the image
ENV RAILS_ROOT /var/www/consul

# Create application home. App server will need the pids dir so just create everything in one shot
RUN mkdir -p $RAILS_ROOT/tmp/pids

# Set our working directory inside the image
WORKDIR $RAILS_ROOT

# Use the Gemfiles as Docker cache markers. Always bundle before copying app src.
# (the src likely changed and we don't want to invalidate Docker's cache too early)
# http://ilikestuffblog.com/2014/01/06/how-to-skip-bundle-install-when-deploying-a-rails-app-to-docker/
COPY Gemfile Gemfile

COPY Gemfile.lock Gemfile.lock

# Prevent bundler warnings; ensure that the bundler version executed is >= that which created Gemfile.lock
RUN gem install bundler

# Finish establishing our Ruby enviornment
RUN bundle install --full-index

# Copy the Rails application into place
COPY . .

# Define the script we want run once the container boots
# Use the "exec" form of CMD so our script shuts down gracefully on SIGTERM (i.e. `docker stop`)
#CMD [ "config/containers/app_cmd.sh" ]
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
