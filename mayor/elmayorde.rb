#Implementación del mayor de cualquier número
if ARGV.length == 1
    puts ARGV[0]
elsif ARGV.length > 0
    mayor
    for i in 0 ... ARGV.length
        for j in 0 ... ARGV.length
            if ARGV[i].to_i >= ARGV[j].to_i and ARGV[i].to_i >= mayor
                mayor = ARGV[i].to_i
            elsif ARGV[j].to_i >= ARGV[i].to_i and ARGV[j].to_i >= mayor
                mayor = ARGV[j].to_i
            end
        end
    end
    puts mayor
else
    puts "Debe ingresar algún parámetro"
end


##Cuàl sería el mayor si fuesen todos negativos? 0?