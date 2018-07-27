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
      @pirate = Pirate.new(params[:pirate])
          params[:student][:courses].each do |details|
            Course.new(details)
          end
        @courses = Course.all
      erb :'pirates/show'
    end

    # code other routes/actions here

  end
end
