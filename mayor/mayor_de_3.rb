#Validación de ARGV para recibir solo 3 elementos
if ARGV.length == 3
    if ARGV[0].to_i >= ARGV[1].to_i and ARGV[0].to_i >= ARGV[2].to_i
        mayor = ARGV[0].to_i
    elsif ARGV[1].to_i >= ARGV[0].to_i and ARGV[1].to_i >= ARGV[2].to_i 
        mayor = ARGV[1].to_i
    else 
        mayor = ARGV[2].to_i
    end
    puts mayor
else
    puts "Los cantidad valores ingresados exceden o son insuficientes, intente ingresar solo 3 valores"
end