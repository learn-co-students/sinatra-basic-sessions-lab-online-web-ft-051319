require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "item"
  end
  
  get ('/'){erb :index}
  
  post '/checkout' do 
    @session = session
    @item = item
    @session[:item] = @item
    
    
    
  end
end