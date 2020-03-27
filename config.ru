# frozen_string_literal: true

require 'rubygems'
require 'bundler'

Bundler.require

require 'rack-ssl-enforcer' if production?
require './mechanicles'

use Rack::Deflater # Useful to compress the responses
use Rack::StaticCache, urls: ['/style.css', '/images'], root: "#{Dir.pwd}/public"
use Rack::SslEnforcer if production?
run Mechanicles
