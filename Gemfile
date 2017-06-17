source 'https://rubygems.org'
ruby "2.3.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'

gem "sqlite3", group: [:development, :test]
gem "pg",      group:  :production

# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem "bootstrap-sass"
gem "font-awesome-rails"
gem "simple_form"
gem "devise"
gem "pundit"
gem "searcher", github: "radar/searcher"

gem "carrierwave"
gem "fog"

gem "sinatra"
gem "active_model_serializers"

group :development do
  gem 'web-console'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'pry-byebug'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem "rspec-rails"
  gem "intellij-coffee-script-debugger", :git => "git://github.com/JetBrains/intellij-coffee-script-debugger.git"
end

group :test do
  gem "capybara"
  gem "factory_girl_rails"
  gem "selenium-webdriver"
  gem "poltergeist"
  gem "phantomjs"
  gem "database_cleaner"
  gem "email_spec"
  # Access an IRB console on exception pages or by using <%= console %> in views
end

group :production do
  gem "rails_12factor"
  gem "puma"
end
