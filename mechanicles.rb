# frozen_string_literal: true

class Mechanicles < Sinatra::Base
  set :root, File.dirname(__FILE__)

  before do
    @current_year     = current_year
    @total_experience = current_year - profession_starting_year
  end

  get '/' do
    erb :home
  end

  get '/profile' do
    erb :home
  end

  not_found do
    '404: Not found!'
  end

  private

  def current_year
    Time.now.year
  end

  def profession_starting_year
    Date.parse('9/8/2010').year
  end
end
