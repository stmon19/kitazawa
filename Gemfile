source 'https://rubygems.org'

ruby '2.2.3'

gem 'rails', '4.2.5'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'sprockets-rails', '~> 2.3.3' # speakingurl not support sprockets-rails 3
gem 'dragonfly-dropbox_data_store'

gem 'execjs'
gem 'refinerycms'
gem 'refinerycms-acts-as-indexed'
gem 'refinerycms-wymeditor'
gem 'refinerycms-authentication-devise'

gem 'refinerycms-posts', path: './vendor/extensions'
gem 'refinerycms-works', path: './vendor/extensions'
gem 'refinerycms-contacts', path: 'vendor/extensions'
gem 'refinerycms-biographies', path: 'vendor/extensions'

gem 'slim'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'mysql2'
  gem 'rspec-rails'
  gem 'factory_girl'
  gem 'pry'
  gem 'pry-doc'
  gem 'dotenv-rails'
end

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'quiet_assets'
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rubocop', require: false
  gem 'bullet'
  gem 'html2slim'
end

group :test do
  # gem 'capybara'
  # gem 'launchy'
  # gem 'poltergeist'
  # gem 'faker'
  # gem 'fuubar'
end
