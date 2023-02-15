source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4", ">= 7.0.4.2"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 5.0"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

# https://github.com/faker-ruby/faker
gem 'faker'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # pry関連 https://pikawaka.com/rails/pry
  gem 'pry-byebug' # https://github.com/deivid-rodriguez/pry-byebug
  gem 'pry-doc'    # https://github.com/pry/pry-doc
  gem 'pry-rails'  # https://github.com/rweng/pry-rails


  # rubocop関連
  gem 'rubocop', require: false       # https://github.com/rubocop-hq/rubocop
  gem 'rubocop-rails', require: false # https://github.com/rubocop/rubocop-rails
  gem 'rubocop-rspec', require: false # https://github.com/rubocop/rubocop-rspec

  # rspec関連
  gem 'rspec-json_matcher', require: false # https://github.com/r7kamura/rspec-json_matcher
  gem 'rspec-rails', require: false # https://github.com/rubocop/rubocop-rspec

  # https://github.com/flyerhzm/bullet
  gem 'bullet'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  # DB構造確認用
  gem 'annotate' # https://github.com/ctran/annotate_models
end

