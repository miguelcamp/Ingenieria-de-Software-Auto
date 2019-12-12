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
   

end
