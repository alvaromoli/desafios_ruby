puts "Ingrese un número"
numero = gets.chomp
suma = 0
i = 0
while i <= numero.to_i do
    suma += i
    i += 1
end
puts suma