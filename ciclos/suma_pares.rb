cuenta = ARGV[0].to_i
i = 1
acumula = 0
cuenta.times do 
    acumula += i * 2 
    i += 1
end
puts acumula