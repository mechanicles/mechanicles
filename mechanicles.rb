require 'sinatra/base'

class Mechanicles < Sinatra::Base
  set :app_file, __FILE__
  set :static_cache_control, [:public, :max_age => 300]

  before do
    @current_year = current_year
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
