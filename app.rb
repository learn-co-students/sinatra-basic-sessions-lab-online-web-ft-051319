require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "secretSESSION"
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        @session = session 
        @session[:item] = params[:item]
        @item = @session[:item]
    end

    # post '/checkout' do 
    #     session[:item] = params[:item]
    #     @session = session
    #     erb :checkout
    #   # create checkout.erb to display item
    # end

end