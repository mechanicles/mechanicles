require 'rubygems'
require 'bundler'

Bundler.require

require './mechanicles'
use Rack::Deflater # Useful to compress the responses
use Rack::StaticCache, urls: ["/style.css", "/images/COFFEE.GIF", "/images/favicon.ico"], root: "#{Dir.pwd}/public"
run Mechanicles
