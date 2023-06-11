source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"
gem "bootsnap", require: false
gem "importmap-rails"
gem "jbuilder"
gem "ordinare"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.5"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'dotenv-rails'
gem 'devise'
gem 'bootstrap', '~> 5.1.3'
gem 'will_paginate'
gem 'ransack'

group :development, :test do
  gem 'byebug', '~> 11.1', '>= 11.1.3'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "faker"
end
