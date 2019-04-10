def fuerza_bruta (password)
    contador = 0
    if password.match? /\A[a-zA-Z'-]*\z/
        for i in "a"..password do
            contador += 1
        end
        #Se le resta el intento encontrado en el for
        puts "#{contador - 1} intentos"
    else
        puts "Debe ingresar un string"
    end
end

fuerza_bruta(ARGV[0])