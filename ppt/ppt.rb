def ppt (opcion1, opcion2)
    #Algoritmo de selección
    # 1 => Piedra / 2 => Papel / 3 => Tijera
    if opcion1 == opcion2
        puts "¡Empate!"
        exit
    else
         if opcion1 == 1 #Piedra
             if opcion2 == 2 #Papel
                 puts "Jugador 2 gana!"
                 exit
             else #Tijera
                 puts "Jugador 1 gana!"
                 exit
             end
         elsif opcion1 == 2  #Papel
             if opcion2 == 1 #Piedra
                 puts "Jugador 1 gana!"
                 exit
             else #Tijera
                 puts "Jugador 2 gana!"
                 exit
             end
         else #Tijera
             if opcion2 == 1 #Piedra
                 puts "Jugador 2 gana!"
                 exit
             else #Papel
                 puts "Jugador 1 gana!"
                 exit
             end
         end
    end
end

def imprime_menu (player)
    opciones = ['Piedra', 'Papel', 'Tijeras', 'Salir']
    puts "Turno jugador #{player}"
    for i in 1..4 do
        puts "#{i}. " + opciones[i - 1].to_s
    end
end

imprime_menu(1)
opcion1 = gets.to_i
opc_disponibles = [1, 2, 3, 4]

until opc_disponibles.include? opcion1
    puts 'Opción inválida!'
    imprime_menu(1)
    opcion1 = gets.to_i
end
if opcion1 == 4 
    exit!
end
imprime_menu(2)
opcion2 = gets.to_i
until opc_disponibles.include? opcion2
    puts 'Opción inválida!'
    imprime_menu(2)
    opcion2 = gets.to_i
end
if opcion2 == 4 
    exit!
end

ppt(opcion1, opcion2)



