# frozen_string_literal: true

class Mechanicles < Sinatra::Base
  set :root, File.dirname(__FILE__)

  get '/' do
    erb :home
  end

  get '/profile' do
    erb :home
  end

  not_found do
    '404: Not found!'
  end
end
