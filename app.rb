require_relative 'config/environment'

class App < Sinatra::Base
  
  get ('/'){erb :index}
  
  post '/checkout' do 
    @item = item
    
    
    
  end
end