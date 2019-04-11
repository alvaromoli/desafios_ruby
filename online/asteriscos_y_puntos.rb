n_veces = ARGV[0].to_i
acumula = ""
for i in 0..n_veces - 1 do
    if i % 2 == 0
        acumula += "*"
    else
        acumula += "."
    end
end
puts acumula 