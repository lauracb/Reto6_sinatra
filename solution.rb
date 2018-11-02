require 'sinatra'

get '/' do
    @contador = params[:item]
    @contador = 0 if @contador == nil
    erb :suma
end

get '/count' do
    @contador = params[:numero].to_i + 1
    redirect "/?item=#{@contador}"
end