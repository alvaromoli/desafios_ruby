class Product
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large
    @medium = medium
    @small = small
    @xsmall = xsmall
  end
  def average
    (@large.to_f + @medium.to_f + @small.to_f + @xsmall.to_f) / 4.0
  end

  def self.new_catalog(name, large, medium, small, xsmall)
    file = File.open('nuevo_catalogo.txt', 'a')
    file.write(name + ", " + large + ", " + medium + ", " + small + "\n")
    file.close
  end
end

products_list = []
data = []

File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
  Product.new_catalog(*ls)
end
