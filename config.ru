require 'rubygems'
require 'bundler'

Bundler.require

require './mechanicles'
use Rack::Deflater # Useful to compress the responses
run Mechanicles
