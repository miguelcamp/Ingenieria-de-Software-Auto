#hola
# Fidel Alejandro Rojas Baptista
# Miguel Campero Flores
require 'sinatra'
load  'lib\auto.rb'


get	'/'	do
    erb :mapa
end
post '/' do
    erb :mapa
end



get '/simulacion' do
    @posY = params[:Y].to_i
    @posX = params[:X].to_i
    @orientacion = params[:orientacion]
    @inst = params[:instrucciones]
    erb :simulacion
end
post '/simulacion' do
    @posY = params[:Y].to_i
    @posX = params[:X].to_i
    @orientacion = params[:orientacion]
    @inst = params[:instrucciones]
    erb :simulacion
end


get '/setup_secuencia' do
    @numAutos = params[:numAutos].to_i
    @aa=true;
    @bb=true;
    @cc=true;
    if(@numAutos==1)
        @bb=false;
        @cc=false;
    elsif(@numAutos==2)
        @cc=false;
    end
   
    @tamX = params[:tamX].to_i
    @tamY = params[:tamY].to_i
        erb :setup_secuencia
end
post '/setup_secuencia' do
    @numAutos = params[:numAutos].to_i

    @tamX = params[:tamX].to_i
    @tamY = params[:tamY].to_i

    erb :setup_secuencia
end


def simular(autoo)
    autoo.simular(@inst)
    
    @result=autoo.getEstado()
end