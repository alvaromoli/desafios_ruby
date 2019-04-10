def gen (cuenta)
    letra = "a"
    acumulador = "";
    cuenta.times do
        acumulador += letra
        letra = letra.next
    end
    return acumulador
end

input = ARGV[0].to_i
puts gen(input)