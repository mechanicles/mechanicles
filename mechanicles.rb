require 'sinatra/base'

class Mechanicles < Sinatra::Base
  set :app_file, __FILE__
  set :root, File.dirname( __FILE__ )
  set :public, File.dirname( __FILE__ ) + '/public'

  @@year = Time.now.year

  get '/' do
    @year = @@year
    erb :index
  end

  get '/info' do
    @year = @@year
    erb :info
  end

  get '/about' do
    @year = @@year
    erb :about
  end

end
