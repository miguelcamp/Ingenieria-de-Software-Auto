class Auto
    
    def initialize(_tx=0,_ty=0)
        @tx=_tx
        @ty=_ty
        
        @x=0
        @y=0
        @Orientacion='N'
        @Instruccion=''
    end
    def getPosX()
        return @x
    end

    def setPosX(_x)
        @x=_x
    end
    
    def getPosY()
        return @y
    end

    def setPosY(_y)
        @y=_y
    end

    def getOrientacion()
        return @Orientacion
    end

    def setOrientacion(_ori)
        if ['N','S','E','O'].include?(_ori)
            @Orientacion=_ori
        else
            return 'error'
        end
    end

    def girarIzq()
        if @Orientacion == 'N'
            @Orientacion='O'
        elsif @Orientacion == 'S'
            @Orientacion='E'
        elsif @Orientacion == 'E'
            @Orientacion='N'
        elsif @Orientacion == 'O'
            @Orientacion='S'
        end    
    end
    def girarDer()
        if @Orientacion == 'N'
            @Orientacion='E'
        elsif @Orientacion == 'S'
            @Orientacion='O'
        elsif @Orientacion == 'E'
            @Orientacion='S'
        elsif @Orientacion == 'O'
            @Orientacion='N'
        end    
    end

    
    def avanzar()
        if @Orientacion == 'N'
            @y+=1
        elsif @Orientacion == 'S'
            @y-=1
        elsif @Orientacion == 'E'
            @x+=1
        elsif @Orientacion == 'O'
            @x-=1
        end    
    end

    def getEstado()
        return ("("+@x.to_s+","+@y.to_s+","+@Orientacion.to_s+")")
    end
    def setEstado(_X, _Y,_ori)
        @X=_X
        @Y=_Y
        @Orientacion=_ori
    end


    def simular(inst)
        @Instruccion=inst
        @Instruccion.each_char {|i| 
        case i
        when 'A'
            avanzar()
        when 'I'
            girarIzq()
        when 'D'
            girarDer()
        end
    
        }
    end
end