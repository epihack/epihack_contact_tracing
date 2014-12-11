source 'https://rubygems.org'

ruby '2.1.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use sqlite3 as the database for Active Record

gem 'sass-rails'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'mysql2'
gem 'devise'
gem "protected_attributes"
gem 'rest-client'
gem 'less-rails' #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails", "~> 3.2"
gem 'will_paginate-bootstrap', "0.2.4"
gem 'devise-encryptable'


group :test do
  gem 'faker'
  gem 'libxml-ruby' 
  gem "machinist", "1.0.6"
  gem 'shoulda', :require => false
  gem "factory_girl"
  gem "simplecov", :require => false
end

group :test, :development do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-mocks'
  gem 'debugger'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'

  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '>= 1.3.0'
  gem 'lodash-rails'
end