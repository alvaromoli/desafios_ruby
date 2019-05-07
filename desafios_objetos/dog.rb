class Dog
  attr_writer :propie
  def initialize(propie)
    @nombre = propie[:nombre]
    @raza = propie[:raza]
    @color = propie[:color]
  end
  def ladrar
    puts "#{@nombre} está ladrando!"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

perro = Dog.new(propiedades)
perro.ladrar
