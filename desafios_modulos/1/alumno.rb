class Alumno
  def initialize(nombre, *notas)
    @nombre = nombre
    @notas = notas.map(&:to_i)
  end

  def self.read_file(filename = 'notas.txt')
    alumnos = []
    data = []
    File.open(filename, 'r') { |file| data = file.readlines }
    data.each do |alumno|
      alumnos << Alumno.new(*alumno.split(', '))
    end
  end
end

alumnos = Alumno.read_file
print alumnos
