
def clear_steps (array)
    result = []
    array.map {|x| result.push x[/\d+/]} #expresión regular
    result
end


pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

clear_steps(pasos)