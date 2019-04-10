lineas = ARGV[0].to_i
acumula = ""
for i in 1..lineas do
    for j in 1..i do
      acumula += "#{j}"
    end
    puts "#{acumula}"
    acumula = ""
end