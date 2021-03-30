require_relative 'config/environment'

class App < Sinatra::Base
    get "/" do

        erb :user_input
    end

    post "/piglatinize" do
        @string = ring.pig(params[:user_phrase])
        erg :piglatinize
    end
end