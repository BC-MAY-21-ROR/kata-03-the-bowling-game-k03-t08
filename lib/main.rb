class Juego
    def initialize
        @tiros = []
    end

    def puntuacion
        class intento= Intento.new()
        primer_intento = rand(11)
        puts primer_intento
        intento.int1=
        segundo = evaluar_intento(primer_intento)
        final = primer_intento + segundo
        puts final
    end

    def evaluar_intento(primer_intento)
        puntos = 10
        puntos -= primer_intento
        
        if primer_intento == 10
            segundo_intento = 0
            puts segundo_intento    
           
        else
            segundo_intento= rand(0..puntos)
            puts segundo_intento 
        end
        return segundo_intento
    end
    
    # ¡Hacer mañana!
    # Primero hacer todas las jugadas
    # Push a los resultados
    # evaluar todo el array agregando puntuación extra 


    
end

juego = Juego.new()
juego.puntuacion