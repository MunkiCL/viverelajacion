source 'https://rubygems.org'
source 'https://rails-assets.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby "2.0.0"
gem 'rails', '4.0.1'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', group: [:test]



# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'


# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
gem 'yui-compressor'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

group :production do
    # Use unicorn as the app server
    gem 'unicorn'
    gem 'foreman'
    gem 'rails_12factor'
    gem 'pg'
end
# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

group :development do
  gem 'zeus'
  gem 'rack-livereload'
  gem 'guard-livereload', require: false
  # gem 'guard-less'
  # gem 'guard-coffeescript'
  gem 'awesome_print'
  gem 'rb-inotify', :require => false # for OS X
  gem "better_errors"
  gem "binding_of_caller"
  gem 'quiet_assets'
  gem 'mysql2'
end

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
gem 'less-rails'
gem 'sass-rails'
gem 'less-rails-bootstrap'

gem 'rails-assets-angular'
gem 'rails-assets-jquery'
gem 'rails-assets-karma'
gem 'rails-assets-karma-ng-scenario'
gem 'rails-assets-modernizr'
gem 'rails-assets-requirejs'
gem 'travis'

# gem 'activeadmin', github: 'gregbell/active_admin'
# gem 'sass-rails'
# gem 'meta_search'
