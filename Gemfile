source 'https://rubygems.org'

gem 'rails'

gem 'acts-as-taggable-on', '~> 4.0.0'
gem 'acts_as_votable', '~> 0.10.0'
gem 'ahoy_matey', '~> 1.6.0'
gem 'ancestry', '~> 2.2.2'
gem 'browser', '~> 2.3.0'
gem 'cancancan', '~> 1.16.0'
gem 'ckeditor', '~> 4.2.3'
gem 'cocoon', '~> 1.2.9'
gem 'coffee-rails', '~> 4.2.1'
gem 'daemons', '~> 1.2.4'
gem 'dalli', '~> 2.7.6'
gem 'delayed_job_active_record', '~> 4.1.0'
gem 'devise', '~> 3.5.7'
gem 'devise-async', '~> 0.10.2'
gem 'devise_security_extension', '~> 0.10.0'
gem 'foundation-rails', '~> 6.2.4.0'
gem 'foundation_rails_helper', '~> 2.0.0'
gem 'graphiql-rails', '~> 1.4.1'
gem 'graphql', '~> 1.6.3'
gem 'groupdate', '~> 3.2.0'
gem 'initialjs-rails', '~> 0.2.0.5'
gem 'invisible_captcha', '~> 0.9.2'
gem 'jquery-fileupload-rails'
gem 'jquery-rails', '~> 4.3.1'
gem 'jquery-ui-rails', '~> 6.0.1'
gem 'kaminari', '~> 1.0.1'
gem 'newrelic_rpm', '~> 4.1.0.333'
gem 'omniauth', '~> 1.6.1'
gem 'omniauth-facebook', '~> 4.0.0'
gem 'omniauth-google-oauth2', '~> 0.4.0'
gem 'omniauth-twitter', '~> 1.4.0'
gem 'paperclip', '~> 5.1.0'
gem 'paranoia', '~> 2.3.1'
gem 'pg', '~> 0.21.0'
gem 'pg_search', '~> 2.0.1'
gem 'rails-assets-markdown-it', '~> 8.2.1', source: 'https://rails-assets.org'
gem 'redcarpet', '~> 3.4.0'
gem 'responders', '~> 2.4.0'
gem 'rinku', '~> 2.0.2', require: 'rails_rinku'
gem 'rollbar', '~> 2.14.1'
gem 'rubyzip', '~> 1.2.0'
gem 'sass-rails', '~> 5.0', '>= 5.0.4'
gem 'savon', '~> 2.11.1'
gem 'sitemap_generator', '~> 5.3.1'
gem 'social-share-button', '~> 0.10'
gem 'sprockets', '~> 3.7.1'
gem 'turbolinks', '~> 2.5.3'
gem 'turnout', '~> 2.4.0'
gem 'uglifier', '~> 3.2.0'
gem 'unicorn', '~> 5.3.0'
gem 'whenever', '~> 0.9.7', require: false
source 'https://rails-assets.org' do
  gem 'rails-assets-leaflet'
end

group :development, :test do
  gem "bullet", '~> 5.5.1'
  gem 'byebug', '~> 9.1.0'
  gem 'factory_girl_rails', '~> 4.8.0'
  gem "faker", '~> 1.7.3'
  gem 'i18n-tasks', '~> 0.9.15'
  gem 'knapsack', '~> 1.13.3'
  gem 'launchy', '~> 2.4.3'
  gem 'letter_opener_web', '~> 1.3.1'
  gem 'quiet_assets', '~> 1.1.0'
  gem 'rubocop', '~> 0.49.1', require: false
  gem 'spring', '~> 2.0.1'
  gem 'spring-commands-rspec', '~> 1.0.4'
end

group :test do
  gem 'capybara', '~> 2.14.0'
  gem 'coveralls', '~> 0.8.21', require: false
  gem 'database_cleaner', '~> 1.6.1'
  gem 'email_spec', '~> 2.1.0'
  gem 'poltergeist', '~> 1.15.0'
  gem 'rspec-rails', '~> 3.6'
end

group :development do
  gem 'capistrano', '~> 3.8.1', require: false
  gem 'capistrano-bundler', '~> 1.2', require: false
  gem "capistrano-rails", '~> 1.2.3', require: false
  gem 'capistrano3-delayed-job', '~> 1.7.3'
  gem 'mdl', '~> 0.4.0', require: false
  gem 'rvm1-capistrano3', '~> 1.4.0', require: false
  gem 'scss_lint', '~> 0.54.0', require: false
  gem 'web-console', '~> 3.3.0'
end

eval_gemfile './Gemfile_custom'


#From the dockerfile
gem 'puma'
gem 'foreman'
