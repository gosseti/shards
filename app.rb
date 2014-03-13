require 'rubygems'
require 'sinatra/base'
require 'slim'
require 'fastimage'

class SinatraBootstrap < Sinatra::Base
  # require './helpers/render_partial'

  get '/' do
    slim :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
