require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :root
    end 

    get '/new' do
      erb:'pirates/new'
    end 

    post '/pirates' do
      @pirate = params[:pirate]
      @p_name = @pirate[:name]
      @p_weight = @pirate[:weight]
      @p_height = @pirate[:height]
      @s1_name = @pirate[:ships][0][:name]
      @s1_type = @pirate[:ships][0][:type]
      @s1_booty = @pirate[:ships][0][:booty]
      @s2_name = @pirate[:ships][1][:name]
      @s2_type = @pirate[:ships][1][:type]
      @s2_booty = @pirate[:ships][1][:booty]
      erb:'/pirates/show'
    end 
    

  end
end
