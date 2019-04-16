def promedio (array)
    result = 0
    n = array.count
    array.each do |x|
        result += x.to_i
    end
    result = result/n
end

def compara_arrays (array1, array2)
    mayor = nil
    if promedio(array1) >= promedio(array2)
        mayor = promedio(array1)
    else
        mayor = promedio(array2)
    end
    return mayor
end


visitas1 = [1000, 800, 250, 300, 500, 2500]
visitas2 = [5000, 800, 250, 300, 500, 1800]

compara_arrays(visitas1, visitas2)
