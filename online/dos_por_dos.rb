n_veces = ARGV[0].to_i
acumula = ""
for i in 0..n_veces - 1 do
    if i % 4 == 0 or i % 4 == 1
        acumula += "*"
    else
        acumula += "."
    end
end
puts acumula