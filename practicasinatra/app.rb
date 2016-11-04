require 'sinatra'
require 'haml'
require "sinatra/reloader" if development?

set :haml, format: :html5
enable(:sessions)



get '/' do
  erb(:index)
end

get'/urldelinfierno' do 
	@titulo = "Hoy es dia #{Date.today.to_s}"

	erb(:infierno)

end

get '/urldelcielo/:name' do 
	params[:name] ||= "Simon"
	@titulo = "Bienvenido al cielo, #{params[:name]} "

	erb(:cielo)
end
