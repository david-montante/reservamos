source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'rails', '~> 7.0', '>= 7.0.2.3'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.3', '>= 1.3.3'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.6', '>= 5.6.2'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# gem 'mini_magick', '~> 4.11' # Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick
# gem 'aws-sdk-s3', '~> 1.111', '>= 1.111.3'
# gem 'aws-sdk-ses', '~> 1.45'
# gem 'aws-sdk-cloudfront', '~> 1.61'

gem 'activerecord-import', '~> 1.3'
gem 'apipie-rails', '~> 0.5.19'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'draper', '~> 4.0', '>= 4.0.2'
gem 'exception_notification', '~> 4.5'
gem 'hashids', '~> 1.0', '>= 1.0.6'
gem 'httparty', '~> 0.20.0'
gem 'jwt', '~> 2.3'
gem 'kaminari', '~> 1.2', '>= 1.2.2'
gem 'nokogiri', '~> 1.13', '>= 1.13.3'
gem 'rails_admin', '~> 3.0.0.rc3' # 2.2.1 does not support Rails 7
gem 'sassc-rails' # Added by rails_admin gem

group :development, :test do
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]

  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.19'
  gem 'rspec-rails', '~> 5.1'
  gem 'rubocop-performance', '~> 1.13', '>= 1.13.2', require: false
  gem 'rubocop-rails', '~> 2.13', '>= 2.13.2', require: false
  gem 'rubocop-rspec', '~> 2.8', require: false
  gem 'shoulda-matchers', '~> 5.1'
  gem 'webmock', '~> 3.14'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  #
  gem 'brakeman', '~> 5.2', '>= 5.2.1'
end
