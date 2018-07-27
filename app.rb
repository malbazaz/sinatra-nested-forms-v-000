require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/new" do 
      erb :new 
    end 

    post "/post" do 
      erb :show
    end 
  
    # code other routes/actions here

  end
end
