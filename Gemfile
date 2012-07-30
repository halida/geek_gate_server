source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer', platform: :ruby
end

gem 'unicorn'

gem 'jquery-rails'
gem 'haml'
gem "haml-rails"
gem 'coffee-filter'
gem "actionmailer_inline_css"
gem 'country_select'
gem 'chosen-rails'

# backend
gem 'gravatar-ultimate'

# admin
gem 'devise'
gem "cancan"
gem 'rails_admin', git: 'https://github.com/halida/rails_admin.git'

gem 'acts-as-taggable-on'
gem 'acts_as_commentable_with_threading', git: "https://github.com/elight/acts_as_commentable_with_threading.git"
gem 'will_paginate', '~> 3.0.pre2'
gem 'simple_form'
gem 'client_side_validations'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :development, :test do
  gem 'quiet_assets', git: 'https://github.com/AgilionApps/quiet_assets.git', tag: 'v0.1.0'
  gem 'rspec'
  gem 'rspec-rails', "~> 2.6"

  gem "capybara"
  gem 'factory_girl_rails'
  gem 'database_cleaner', "~> 0.7.1"

  gem 'sextant'
end

