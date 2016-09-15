require "tilt/erb" # Removes thread safety warning.

class Mechanicles < Sinatra::Base
  set :root, File.dirname(__FILE__)

  before do
    @current_year = current_year
    cache_control :public, :must_revalidate, max_age: 1800
  end

  get '/' do
    erb :index
  end

  get '/info' do
    erb :info
  end

  get '/about' do
    erb :about
  end

  private

  def current_year
    Time.now.year
  end
end
