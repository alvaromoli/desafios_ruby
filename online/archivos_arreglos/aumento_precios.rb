def augment (array, multiplier)
    array.map {|x| x * multiplier}
end


array_int = [1, 2, 3, 4, 5]
mul = 2
print augment(array_int, mul)