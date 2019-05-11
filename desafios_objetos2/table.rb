# Dcu
class Table
  attr_accessor :mesa, :dias
  def initialize(mesa, *dias)
    @mesa = mesa
    @dias = dias.map(&:to_i)
  end

  def highest
    high = @dias.max
    day = @dias.index(@dias.max) + 1
    "#{@mesa}, #{high}, dia #{day}"
  end

  def average
    avg = @dias.sum / @dias.size.to_f
    "#{@mesa}, #{avg}"
  end
end

def instanciar(archivo)
  data = []
  obj = []
  File.open(archivo, 'r') { |file| data = file.readlines }
  data.each do |table|
    ls = table.split(', ')
    obj << Table.new(*ls)
  end
end
