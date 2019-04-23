def proyection (array, rize, from, to)
    sum = 0
    from = from.to_i - 1
    to = to.to_i - 1
    rize = rize.to_f/100 + 1 #+100%
    array.each {|x| x.to_f}
    for i in from...to do
        sum = sum + (array[i].to_f * rize)
    end
    return sum
end

array = open('ventas_base.db').read.split(',')


puts proyection(array, 10, 1, 3)
puts proyection(array, 20, 10, 12)
