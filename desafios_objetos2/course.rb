require 'date'

class Course
  def initialize(name, *dates)
    @name = name
    @dates = dates.map { |date| Date.parse(date) }
    now = Date.today
  end

  def courses_before
    @dates.select { |date| date < now }
  end

  def courses_after
    @dates.select { |date| date > now }
  end
end

def instanciar(archivo)
  data = []
  obj = []
  File.open(archivo, 'r') { |file| data = file.readlines }
  data.each do |table|
    ls = table.split(', ')
    obj << Course.new(*ls)
  end
end

file = File.open('cursos.txt', 'r')
data = file.readlines
file.close

data.each do |line|
  ls = line.split(', ')
  Course.new(*ls)
end
