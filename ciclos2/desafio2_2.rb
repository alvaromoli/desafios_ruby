def letra_o (n)
    figura = ""
    for i in 1..n do
        for j in 1..n do
            if i == 1 or i == n or j == 1 or j == n
                figura += "*"
            else 
                figura += " "
            end
        end
        puts figura 
        figura = ""
    end
end

def letra_i (n)
    figura = ""
    for i in 1..n do
        for j in 1..n do
            if i == 1 or i == n or j == ((n+1)/2).round
                figura += "*"
            else 
                figura += " "
            end
        end
        puts figura 
        figura = ""
    end
end

def letra_z (n)
    figura = ""
    for i in 1..n do
        for j in n.downto(1) do
            if i == n or i == 1
                figura += "*"
            else
                if i == j
                    figura += "*"
                else
                    figura += " "
                end
            end     
        end
        puts figura
        figura = ""
    end
end

def letra_x (n)
    figura = ""
    for i in 1..n do
        cuenta = 1
        for j in n.downto(1) do
            if j == i or (i + j) == n + 1
                figura += "*"
            else
                figura += " "
            end
        end
        puts figura
        figura = ""
    end
end

def numero_cero (n)
    figura = ""
    for i in 1..n do
        cuenta = 1
        for j in 1..n do
            if j == i or j == n or j == 1 or i == 1 or i == n
                figura += "*"
            else
                figura += " "
            end
        end
        puts figura
        figura = ""
    end
end

def navidad (n)
    for j in 1..n - 1 do
        if j % 2 != 0
            puts ("*" * j).center(n) #impares
        else
            puts ("*" * j).center(n) #pares
        end
    end
end

if(ARGV[0].to_i > 0)
    n = ARGV[0].to_i
    letra_o(n)
    letra_i(n)
    letra_z(n)
    letra_x(n)
    numero_cero(n)
    navidad(n)
else
   puts "Ingrese un valor numérico"
end
