# Module Formula
module Formula
  def perimetro
    if self.class == Rectangulo
      "El perímetro del rectangulo es #{2 * (@largo + @ancho)}"
    else
      "El perímetro del cuadrado es #{4 * @lado}"
    end
  end

  def area
    if self.class == Rectangulo
      "El área del rectangulo es #{@largo * @ancho}"
    else
      "El área del cuadrado es #{@lado * @lado}"
    end
  end
end

# Class Rectangulo
class Rectangulo
  include Formula
  attr_accessor :largo, :ancho
  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
    "Largo: #{@largo}, Ancho: #{@ancho}"
  end
end

# Class Cuadrado
class Cuadrado
  include Formula
  attr_accessor :lado
  def initialize(lado)
    @lado = lado
  end

  def lados
    "Lado: #{@lado}"
  end
end

rectangulo = Rectangulo.new(3, 2)
puts rectangulo.lados
puts rectangulo.perimetro
puts rectangulo.area

cuadrado = Cuadrado.new(2)
puts cuadrado.lados
puts cuadrado.perimetro
puts cuadrado.area
