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




FROM coreapps/ruby2.3
RUN apt-get update -qq  && apt-get install -y build-essential libpq-dev nodejs
#RUN mkdir /consul
ADD ./ /rails
WORKDIR /rails



RUN bundle install
