class Vehicle
attr_writer :model, :year
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@count = 0
  def initialize(model, year)
    super(model, year)
    @@count += 1
  end

  def self.get_number_of_instaces
    @@count
  end

  def engine_start
    "El motor se ha encendido"
  end
end

instancias = 10

instancias.times do |i|
  Car.new('model', 1000)
end

puts Car.get_number_of_instaces
