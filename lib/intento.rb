class Intento
  attr_accessor :int1, :int2, :int3, :final

  def initialize
    @int1 = int1
    @int2 = int2
    @int3 = int3
    @final = final
  end

  def spare_bonus
    int1
  end

  def strike_bonus
    int1 + int2
  end
end
