def nota_mas_alta(array)
    new_array = []
    lines = array.count
    for i in 1..lines do
        new_array << array[i].to_i
    end
    return new_array.max
end


file = open('notas.data').readlines
lines = file.count
lines.times do |i|
    array = file[i].split(",")
    nota_mas_alta(array)
end