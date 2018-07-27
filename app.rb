require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb "root
    end

    get "/new" do
      erb :new
    end

    post "/post" do
      erb :show
    end

    # code other routes/actions here


end
