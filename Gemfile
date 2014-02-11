source 'https://rubygems.org'

ruby "2.0.0"
gem 'rails', '4.0.1'

# Use sqlite3 as the database for Active Record


group :assets do
	gem 'sass-rails', '~> 4.0.0'
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem 'less-rails-bootstrap'
gem 'actionpack-page_caching'
gem 'rack-cache'
gem 'negative_captcha'
gem 'fb_graph'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


gem 'unicorn'
gem 'devise'
gem 'active_attr'
gem 'pony'
gem 'sidekiq'

gem 'debugger', group: [:development, :test]

group :development do
	gem 'capistrano'
	gem 'foreman'
	group :darwin do
		gem 'rb-fsevent', :require => false
		gem 'guard-pow', :require => false
	end
	gem 'guard-livereload', require: false
	gem 'sqlite3'
end

gem 'rspec-rails', group: [:development, :test]
group :test do
	gem 'database_cleaner'
	gem 'factory_girl_rails'
	gem 'sqlite3'
end
# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
	gem 'pg'
	gem 'rails_12factor'
end