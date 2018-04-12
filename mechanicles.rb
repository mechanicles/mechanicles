class Mechanicles < Sinatra::Base

  set :root, File.dirname(__FILE__)

  before do
    @current_year     = current_year
    @total_experience = current_year - profession_starting_year
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

  def profession_starting_year
    Date.parse('9/8/2010').year
  end

end
