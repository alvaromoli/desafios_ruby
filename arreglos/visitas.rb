def promedio (array)
    result = 0
    n = array.count
    array.each do |x|
        result += x.to_i
    end
    result = result/n
end

visitas = [1000, 800, 250, 300, 500, 2500]

puts promedio(visitas)