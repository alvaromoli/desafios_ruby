def patron_1 (n)
    n_veces = n.to_i
    acumula = ""
    for i in 0..n_veces - 1 do
        if i % 2 == 0
            acumula += "*"
        else
            acumula += "."
        end
    end
    puts acumula 
end

def patron_2 (n)
    n_veces = n.to_i
    acumula = ""
    for i in 0..n_veces - 1 do
        if i % 4 == 0 or i % 4 == 1
            acumula += "*"
        else
            acumula += "."
        end
    end
    puts acumula 
end

def patron_3 (n)
    n_veces = n.to_i
    acumula = ""
    for i in 0..n_veces - 1 do
        if i % 2 == 0
            acumula += "1"
        else
            acumula += "2"
        end
    end
    puts acumula 
end

def patron_4 (n)
    n_veces = n.to_i
    acumula = ""
    numero = 1
    for i in 0..n_veces - 1 do
        if numero == 3
            acumula += "#{numero}"
            numero = 1
        else
            acumula += "#{numero}"
            numero += 1
        end
    end
    puts acumula 
end

patron_1(ARGV[0])
patron_2(ARGV[0])
patron_3(ARGV[0])
patron_4(ARGV[0])