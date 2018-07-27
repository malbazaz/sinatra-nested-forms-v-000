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
      @pirate_name  = Pirate.new(params[:name])
      @pirate_weight= Pirate.new(params[:weight])
      @pirate_height= Pirate.new(params[:height])
      @ship_name_1  = Ship.new(params[:name])
      @ship_type_1  = Ship.new(params[:type])
      @ship_type_1  = Ship.new(params[:boot])
      @ship_name_2  = Ship.new(params[:name])
      @ship_type_2  = Ship.new(params[:type])
      @ship_booty_2 = Ship.new(params[:booty])
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
