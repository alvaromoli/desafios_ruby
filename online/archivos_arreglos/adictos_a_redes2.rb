def scan_addicts2 (array)
    result = []
    array.each do |x|
        if x < 90
            result.push 'bien'
        elsif x >= 90 and x < 180
            result.push 'mejorable'
        elsif x >= 180
            result.push 'mal'
        else
            result.push 'error'
        end
    end
    return result
end

array_ejemplo = [1, 180, 90, 0, 91]

print scan_addicts2(array_ejemplo)