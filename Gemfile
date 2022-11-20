# frozen_string_literal: true

source 'https://rubygems.org'
ruby File.read('.ruby-version').strip

# configuration and utilities
gem 'figaro', '~> 1.2'
gem 'rake'

# Web Application
gem 'puma', '~> 5'
gem 'roda', '~> 3'
gem 'slim', '~> 4'

# Database
gem 'hirb', '~> 0'
gem 'hirb-unicode', '~> 0'
gem 'sequel', '~> 5.49'

group :development, :test do
  gem 'sqlite3'
end

#group :production do
 # gem 'pg'
#end

# Networking
gem 'http', '~> 5'

# Testing
group :test do
  gem 'minitest'
  gem 'minitest-rg', '~> 5'
  gem 'simplecov', '~> 0'
  gem 'vcr', '~> 6'
  gem 'webmock', '~> 3'
end

# Validation
gem 'dry-struct', '~> 1'
gem 'dry-types', '~> 1'

# Debugging
gem 'pry'

# Code Quality
gem 'flog'
gem 'reek'
gem 'rubocop'

gem 'activesupport', '~> 7.0.4'
