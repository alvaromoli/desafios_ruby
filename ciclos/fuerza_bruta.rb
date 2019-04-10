def fuerza_bruta (password)
    contador = 0
    for i in "a"..password do
        contador += 1
    end
    #Se le resta el intento encontrado en el for
    puts "#{contador - 1} intentos"
end

fuerza_bruta(ARGV[0])