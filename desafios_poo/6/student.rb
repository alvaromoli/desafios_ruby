# Module Test
module Test
  NOTA_MINIMA = 4
  def result(nota1, nota2)
    re = (nota1 + nota2) / 2
    if re > NOTA_MINIMA
      "Estudiante aprobado"
    else
      "Estudiante reprobado"
    end
  end
end

# Module Attendance
module Attendance
  
end

# Class Stundent
class Stundent
  include Test
  extend Attendance
  @@quantity = 0
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @nombre = nombre
    @nota1 = nota1.to_f
    @nota2 = nota2.to_f
    @@quantity += 1
  end

  def self.get_number_of_instaces
    @@quantity
  end
end
