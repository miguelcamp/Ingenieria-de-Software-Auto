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
    @posY = params[:Y1].to_i
    @posX = params[:X1].to_i
    @orientacion = params[:orientacion1]
    @inst = params[:instrucciones1]

    if @@numAutos >= 2
        @posY2 = params[:Y2].to_i
        @posX2 = params[:X2].to_i
        @orientacion2 = params[:orientacion2]
        @inst2 = params[:instrucciones2]
    end
    if @@numAutos >= 3
        @posY3 = params[:Y3].to_i
        @posX3 = params[:X3].to_i
        @orientacion3 = params[:orientacion3]
        @inst3 = params[:instrucciones3]
    end
    erb :simulacion
end


get '/setup_secuencia' do
    @@numAutos = params[:numAutos].to_i
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


def simular()
    auto1=Auto.new
    auto1.setPosX(@posX)
    auto1.setPosY(@posY)
    auto1.setOrientacion(@orientacion)
    auto1.simular(@inst)
    @result=auto1.getEstado()

    if @@numAutos>1
        auto2=Auto.new
        auto2.setPosX(@posX2)
        auto2.setPosY(@posY2)
        auto2.setOrientacion(@orientacion2)
        auto2.simular(@inst2)

        @result2=auto2.getEstado()
        if @@numAutos>2
            auto3=Auto.new
            auto3.setPosX(@posX3)
            auto3.setPosY(@posY3)
            auto3.setOrientacion(@orientacion3)
            auto3.simular(@inst3)

            @result3=auto3.getEstado()
        end
    end

        
end