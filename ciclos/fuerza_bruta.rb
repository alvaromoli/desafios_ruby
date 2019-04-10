def fuerza_bruta (password)
    contador = 0
    for i in "a"..password do
        contador += 1
    end
    #Se le resta el intento encontrado en el for
    return contador - 1
end

puts fuerza_bruta(ARGV[0])