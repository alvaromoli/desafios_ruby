#Validación de ARGV para recibir solo 4 elementos
if ARGV.length < 5 and ARGV.length > 2
    if ARGV.length == 4
        if ARGV[0].to_i >= ARGV[1].to_i and ARGV[0].to_i >= ARGV[2].to_i and ARGV[0].to_i >= ARGV[3].to_i
            mayor = ARGV[0].to_i
        elsif ARGV[1].to_i >= ARGV[0].to_i and ARGV[1].to_i >= ARGV[2].to_i and ARGV[1].to_i >= ARGV[3].to_i
            mayor = ARGV[1].to_i
        elsif ARGV[2].to_i >= ARGV[0].to_i and ARGV[2].to_i >= ARGV[1].to_i and ARGV[2].to_i >= ARGV[3].to_i
            mayor = ARGV[2].to_i
        else 
            mayor = ARGV[3].to_i
        end
    else
        if ARGV[0].to_i >= ARGV[1].to_i and ARGV[0].to_i >= ARGV[2].to_i
            mayor = ARGV[0].to_i
        elsif ARGV[1].to_i >= ARGV[0].to_i and ARGV[1].to_i >= ARGV[2].to_i 
            mayor = ARGV[1].to_i
        else 
            mayor = ARGV[2].to_i
        end
    end
    puts mayor
else
    puts "Los cantidad valores ingresados exceden o son insuficientes, intente ingresar solo 3 o 4 valores"
end