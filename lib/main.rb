require_relative './intento'

class Juego
  def initialize
    @tiros = []
  end

  def puntuacion
    10.times do
      primer_intento = rand(11)
      intento = Intento.new
      intento.int1 = primer_intento
      segundo = evaluar_intento(primer_intento)
      intento.int2 = segundo
      final = primer_intento + segundo
      intento.final = final
      @tiros.push(intento)
    end
    @tiros
  end

  def evaluar_intento(primer_intento)
    puntos = 10
    puntos -= primer_intento

    if primer_intento == 10
      0
    else
      rand(0..puntos)
    end
  end

  def imprimir_tablero
    total = 0
    10.times do |i|
      puts ' '
      puts "Tirada #{i + 1}"
      valor = @tiros[i]
      puts "Intento 1: #{valor.int1}"
      puts "Intento 2: #{valor.int2}"
      puts "Intento 3:#{valor.int3}" if valor.int3
      total += valor.final
      puts "Score: #{total}"
    end
  end

  def evaluar_juego
    10.times do |i|
      valor = @tiros[i]
      if (i == 9) && (valor.int1 == 10 || valor.final == 10)
        tiro_bonus(valor)
      elsif valor.int1 == 10
        bonus_strike = @tiros[i + 1].strike_bonus
        @tiros[i].final += bonus_strike
        puts "Bonus strike: #{@tiros[i].final}"
      elsif valor.int1 + valor.int2 == 10
        bonus_spare = @tiros[i + 1].spare_bonus
        @tiros[i].final += bonus_spare
        puts "Bonus spare: #{@tiros[i].final}"
      end
    end
    @tiros
  end

  def tiro_bonus(valor)
    bonus = rand(11)
    valor.int3 = bonus
    valor.final += bonus
  end
end

=begin
 Hacer refactory de los metodos
 El lunes hacer las pruebas
=end

juego = Juego.new
juego2 = Juego.new
juego.puntuacion
juego.evaluar_juego
juego.imprimir_tablero
