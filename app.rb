require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    #
    # #INDEX
    # get '/pirates' do
    #   #model
    #   @pirate = Pirate.all
    #   #view
    #   erb :index
    # end

    #NEW
    get '/new' do
      #model
      # @pirate = Pirate.all
      #view
      erb :"pirates/new"
    end

    # # #SHOW
    # get '/pirates/:id' do
    #   @pirate=Pirate.find(params[:id])
    #   erb :"pirates/show"
    # end

    #CREATE
    post '/pirates' do
      @pirate= Pirate.new(params[:pirate])
      @ship1=Ship.new(params[:pirate][:ships][0])
      @ship2= Ship.new(params[:pirate][:ships][1])
      erb :'pirates/show'
   end






  end
end
