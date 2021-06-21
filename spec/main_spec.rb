require_relative '../lib/main.rb'

RSpec.describe Juego do 
    let(:juego) {Juego.new}
    context("Test a la clase Juego") do
        it("Que la clase Juego este creada") do
            expect(juego).to be_instance_of(Juego)
        end
        it("Que el array de tiros tenga 10 posiciones") do
            juegoTotal = juego.puntuacion
            expect(juegoTotal.size).to eq(10)
        end
        it("Evaluar intento deberia recibir 10 y regresar 0") do
           evaluacion = juego.evaluar_intento(10)
           expect(evaluacion).to eq(0)
        end
        it("Evaluar que el metodo evaluar_juego tenga los 10 intentos") do  
            juego.puntuacion
            array_resultado = juego.evaluar_juego
            expect(array_resultado.size).to be_between(10,11).inclusive
        end
    end
end