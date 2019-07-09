require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "sucret"
  end

  get '/' do

    erb :index
  end

  post '/checkout' do
    @sesshash={}
    # @temphash[params[:item]] = params[:price]
    #     binding.pry
    # session << @temphash
    session[:item] = params[:item]
    @sesshash = session
    erb :display_items
  end
end
