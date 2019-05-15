# Class Herviboro
module Herviboro
  DEFINIR = 'Sólo me alimento de vegetales!'

  def dieta
    "Soy un Herviboro!"
  end
end

# Class Animal
class Animal
  def saludar
    "Soy un animal!"
  end
end

# Class Conejo
class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
conejo.saludar
conejo.dieta
puts Herviboro::DEFINIR
