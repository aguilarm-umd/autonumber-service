ruby '2.2.4'

source 'https://rubygems.org'

# use HTTPS for github repos (see https://bundler.io/git.html#security)
git_source(:github) { |repo_name| "https://github.com/#{repo_name}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'will_paginate', '~> 3.0.6'

gem 'will_paginate-bootstrap'

gem 'umd_lib_style', github: 'umd-lib/umd_lib_style', ref: '1.0.0'

gem 'ransack'

# CAS Authentication
# April 25, 2016: Need to use GitHub instead of Gem
# See https://github.com/rubycas/rubycas-client-rails/issues/27
gem 'rubycas-client', github: 'rubycas/rubycas-client', branch: 'master'

# dotenv - For storing production configuration parameters
gem 'dotenv-rails', '~> 2.1.1'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'jquery-ui-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
  gem 'rubocop'
  gem 'rubocop-checkstyle_formatter', '~> 0.2.0', require: false
  gem 'simplecov', require: false
  gem 'simplecov-rcov', require: false
  gem 'minitest-reporters', '1.0.5'
  gem 'faker'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'pg', '~> 0.18.4'
end
