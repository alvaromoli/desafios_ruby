def fix_nota (array)
    result = []
    array.each do |x|
        if x == 'N.A'
            result.push 2
        else
            result.push x
        end
    end
    return result
end

def prom (array)
    return array.sum/array.count.to_f
end

notas = [5, 7, 1, 3, 5, 8, 9, 'N.A', 'N.A', 3]

data = prom(fix_nota(notas))

print data
print "\n"