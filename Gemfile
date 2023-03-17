# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.3'

gem 'sinatra'

gem 'humanize'

gem 'rack-contrib'

group :developement do
  gem 'foreman'
end

group :developement, :production do
  gem 'puma'
end

group :production do
  gem 'rack-ssl-enforcer'
end
