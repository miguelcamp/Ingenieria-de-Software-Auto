
# Fidel Alejandro Rojas Baptista
# Miguel Campero Flores
require 'sinatra'
load  'lib\auto.rb'

@auto = Auto.new

get	'/'	do
    erb :mapa
end

get '/area' do
    erb :area
end

get '/setup_secuencia' do
    @tamX = params[:tamX].to_i
    @tamY = params[:tamY].to_i

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


def avanzar()
    if @orientacion == 'N'
        @posY+=1
    elsif @orientacion == 'S'
        @posY-=1
    elsif @orientacion == 'E'
        @posX+=1
    elsif @orientacion == 'O'
        @posX-=1
    end    
end

def izq()
    if @orientacion == 'N'
        @orientacion='O'
    elsif @orientacion == 'S'
        @orientacion='E'
    elsif @orientacion == 'E'
        @orientacion='N'
    elsif @orientacion == 'O'
        @orientacion='S'
    end    
end

def der()
    if @orientacion == 'N'
        @orientacion='E'
    elsif @orientacion == 'S'
        @orientacion='O'
    elsif @orientacion == 'E'
        @orientacion='S'
    elsif @orientacion == 'O'
        @orientacion='N'
    end    
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


def avanzar()
    if @orientacion == 'N'
        @posY+=1
    elsif @orientacion == 'S'
        @posY-=1
    elsif @orientacion == 'E'
        @posX+=1
    elsif @orientacion == 'O'
        @posX-=1
    end    
end

def izq()
    if @orientacion == 'N'
        @orientacion='O'
    elsif @orientacion == 'S'
        @orientacion='E'
    elsif @orientacion == 'E'
        @orientacion='N'
    elsif @orientacion == 'O'
        @orientacion='S'
    end    
end

def der()
    if @orientacion == 'N'
        @orientacion='E'
    elsif @orientacion == 'S'
        @orientacion='O'
    elsif @orientacion == 'E'
        @orientacion='S'
    elsif @orientacion == 'O'
        @orientacion='N'
    end    
end

def simular()
    #@auto.simular(@inst)
    @inst.each_char {|i| 
    case i
    when 'A'
        avanzar()
    when 'I'
        izq()
    when 'D'
        der()
    end
    }
end