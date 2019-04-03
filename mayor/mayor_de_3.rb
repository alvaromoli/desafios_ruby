#Validación de ARGV para recibir solo 4 elementos
if ARGV.length == 3
    for i in 0 ... ARGV.length
        for j in 0 ... ARGV.length
            if ARGV[i].to_i > ARGV[j].to_i
                mayor = ARGV[i].to_i
            else
                mayor = ARGV[j].to_i
            end
        end
    end
    puts mayor
else
    puts "Los cantidad valores ingresados exceden o son insuficientes, intente ingresar solo 3 valores"
end