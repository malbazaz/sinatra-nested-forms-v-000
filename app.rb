require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :root
    end

    get "/new" do
      erb :'pirates/new'
    end

    post "/pirates" do
      @pirate_name  = Pirate.new(params[])
      @pirate_weight= Pirate.new(params[])
      @pirate_height= Pirate.new(params[])
      @ship_name_1  = Ship.new(params[])
      @ship_type_1  = Ship.new(params[])
      @ship_type_1  = Ship.new(params[])
      @ship_name_2  = Ship.new(params[])
      @ship_type_2  = Ship.new(params[])
      @ship_booty_2 = Ship.new(params[])
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
