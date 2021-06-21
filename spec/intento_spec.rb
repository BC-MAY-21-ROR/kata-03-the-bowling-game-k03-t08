require_relative '../lib/intento'

RSpec.describe Intento do
    let(:intento) {Intento.new}
    context("Clase intento creada") do
        it("Instanciar la clase") do
            expect(intento).to be_instance_of(Intento)
       end
    

        it("Tiene que regresar el primer intento") do
            intento.int1=10
            intento1=intento.spare_bonus
            expect(intento1).to eq(10) 
        end

        it("Tiene que regresar los siguientes 2 intentos") do
            intento.int1 = 10
            intento.int2 = 10
            strike_bonificacion = intento.strike_bonus
            expect(strike_bonificacion).to eq(20)
        end
        
    end
end