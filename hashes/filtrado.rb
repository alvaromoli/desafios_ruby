ventas = {
    Octubre: 65000,
    Noviembre: 68000,
    Diciembre: 72000
}

ventas.each do |key, value|
    if value < 70000
        puts key
    end
end