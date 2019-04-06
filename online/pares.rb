suma_pares = 0
i = 0
while i <= ARGV[0].to_i do
    if i % 2 == 0
        suma_pares += i
    end
    i += 1
end
puts suma_pares