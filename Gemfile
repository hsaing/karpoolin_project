source 'https://rubygems.org'

gem 'rails', '4.0.0'

group :development, :test do
	gem 'sqlite3'
end	

group :production do
  gem 'pg' # dont want sqlite in production
  gem 'unicorn' # make sure you follow installation instructions for this gem
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'zurb-foundation'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem "twitter-bootstrap-rails"

group :doc do
  gem 'sdoc', require: false
end

gem 'simple_form'
gem 'bootstrap-sass'
gem 'hirb'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'datetimepicker-rails', :require => 'datetimepicker-rails', :git => 'git://github.com/zpaulovics/datetimepicker-rails.git'

group :assets do
  gem 'bootstrap-modal-rails'
end

