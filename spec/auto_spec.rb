require 'auto.rb'

RSpec.describe Auto do
    it 'Al llamar a getPosX() deberia retornar su posicion inicial en X por defecto (0)' do
        auto=Auto.new
        expect(auto.getPosX()).to eq(0)
    end
    it 'Al hacer un setPosX(1) y despues un getPosX() deberia retornar su posicion X ingresada (1)' do
        auto=Auto.new
        auto.setPosX(1)
        expect(auto.getPosX()).to eq(1)
    end

    it 'Al llamar a getPosy() deberia retornar su posicion inicial en Y por defecto (0)' do
        auto=Auto.new
        expect(auto.getPosY()).to eq(0)
    end
    it 'Al hacer un setPosY(1) y despues un getPosY() deberia retornar su posicion Y ingresada (1)' do
        auto=Auto.new
        auto.setPosY(1)
        expect(auto.getPosY()).to eq(1)
    end

    it 'Al hacer un getOrientacion() deberia retornar su orientacion inicial en Y por defecto (N)' do
        auto=Auto.new
        expect(auto.getOrientacion()).to eq("N")
    end

    it 'Al hacer un setOrientacion(O) y despues un getOrientacion() deberia retornar su orientacion Y ingresada (O)' do
        auto=Auto.new
        auto.setOrientacion('O')
        expect(auto.getOrientacion()).to eq("O")
    end

    it 'Al hacer un setOrientacion(X) deberia retornar un error' do
        auto=Auto.new
        expect(auto.setOrientacion('X')).to eq("error")
    end

    it 'girarIzq() a un auto nuevo deberia retornar O' do
        auto=Auto.new
        auto.girarIzq()
        expect(auto.getOrientacion()).to eq("O")
    end

    it 'girarIzq() con orientacion inicial O deberia retornar S' do
        auto=Auto.new
        auto.setOrientacion('O')
        auto.girarIzq()
        expect(auto.getOrientacion()).to eq("S")
    end
    it 'girarIzq() con orientacion inicial S deberia retornar E' do
        auto=Auto.new
        auto.setOrientacion('S')
        auto.girarIzq()
        expect(auto.getOrientacion()).to eq("E")
    end
    it 'girarIzq() con orientacion inicial E deberia retornar N' do
        auto=Auto.new
        auto.setOrientacion('E')
        auto.girarIzq()
        expect(auto.getOrientacion()).to eq("N")
    end

    it 'girarDer() a un auto nuevo deberia retornar E' do
        auto=Auto.new
        auto.girarDer()
        expect(auto.getOrientacion()).to eq("E")
    end

    it 'girarDer() con orientacion inicial E deberia retornar S' do
        auto=Auto.new
        auto.setOrientacion('E')
        auto.girarDer()
        expect(auto.getOrientacion()).to eq("S")
    end
    it 'girarDer() con orientacion inicial S deberia retornar O' do
        auto=Auto.new
        auto.setOrientacion('S')
        auto.girarDer()
        expect(auto.getOrientacion()).to eq("O")
    end
    it 'girarDer() con orientacion inicial O deberia retornar N' do
        auto=Auto.new
        auto.setOrientacion('O')
        auto.girarDer()
        expect(auto.getOrientacion()).to eq("N")
    end
    it 'Al hacer getEstado() de un auto nuevo deveria devolver (0,0,N)' do
        auto=Auto.new
        expect(auto.getEstado()).to eq("(0,0,N)")
    end
    
    it'Un auto nuevo llamando a avanzar() deberia' do
        auto=Auto.new
        auto.avanzar()
        expect(auto.getEstado()).to eq("(0,1,N)")
    end

    it'Un auto que gira a la derecha y avanza 4 veces deberia volver a su estado inicial' do
        auto=Auto.new
        for value in 1..4 do
            auto.girarDer()                        
            auto.avanzar()            
        end
        expect(auto.getEstado()).to eq("(0,0,N)")
    end
    
    it'Un auto que gira a la izquierda y avanza 4 veces deberia volver a su estado inicial' do
        auto=Auto.new
        for value in 1..4 do
            auto.girarIzq()                        
            auto.avanzar()            
        end
        expect(auto.getEstado()).to eq("(0,0,N)")
    end

    it 'Un auto en la posicion inicial por defecto que recibe la secuencia de instruccion "ADAD" deberia llegar a "(1,1,S)"'do
        auto=Auto.new
        auto.simular('ADAI')
        expect(auto.getEstado()).to eq("(1,1,N)")
    end

end
