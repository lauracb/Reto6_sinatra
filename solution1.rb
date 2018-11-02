require 'sinatra'

get '/' do
    @contador = 0
    erb :suma
end

get '/count' do
    @contador = params[:numero].to_i + 1
    erb :suma
end