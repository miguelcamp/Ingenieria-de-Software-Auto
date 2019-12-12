#hola
# Fidel Alejandro Rojas Baptista
# Miguel Campero Flores
require 'sinatra'
load  'lib\auto.rb'

@auto = Auto.new

get	'/'	do
    erb :mapa
end
post '/' do
    erb :mapa
end


post '/setup_secuencia' do
    @tamX = params[:tamX].to_i
    @tamY = params[:tamY].to_i
    @numAutos = params[:autos].to_i

   if (@tamX * @tamY==0)
    erb :mapa
   else
    erb :setup_secuencia
    end
end

post '/simulacion' do
    @posY = params[:Y].to_i
    @posX = params[:X].to_i
    @orientacion = params[:orientacion]
    @inst = params[:instrucciones]

    erb :simulacion
end

get	'/'	do
    erb :index
end

get '/area' do
    erb :area
end

get '/setup_secuencia' do
    @tamX = params[:tamX].to_i
    @tamY = params[:tamY].to_i

    erb :setup_secuencia
end

post '/simulacion' do
    @posY = params[:Y].to_i
    @posX = params[:X].to_i
    @orientacion = params[:orientacion]
    @inst = params[:instrucciones]

    erb :simulacion
end

def simular()
    autoo=Auto.new
    autoo.simular(@inst)
    @result=autoo.getEstado()
end