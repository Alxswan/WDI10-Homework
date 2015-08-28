require 'sinatra'
require 'sinatra/reloader'

get '/' do
	#calculation
	erb :calc
end

get '/calc' do
	
	@x = params[:x].to_f
	@y = params[:y].to_f

	@result = case params[:operation] 
	when '+' then @x * @y
	when '-' then @x - @y
	when '*' then @y * @y
	when '/' then @y / @y
	end
	erb :calc
end


get '/about' do
	erb :about
end

get '/help' do
	erb :help
end

get '/advertise' do
	erb :advertise
end