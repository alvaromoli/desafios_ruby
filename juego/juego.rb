#Validación de la cantidad de parámetros
if ARGV.length == 1
    #Nomenclatura: Piedra = 0 / Papel = 1 / Tijera = 2
    #Validación de las opciones y lowercase para validar incluso si se escribe en mayúsculas
    opcion_usuario = ARGV[0].downcase
    if opcion_usuario == 'piedra' or opcion_usuario == 'papel' or opcion_usuario  == 'tijera'
        opcion_maquina = rand(0..2)
        #Asignación de string correspondiente según resultado del rand
        if opcion_maquina == 0
            opcion_maquina_string = 'piedra'
        elsif opcion_maquina == 1
            opcion_maquina_string = 'papel'
        else
            opcion_maquina_string = 'tijera'
        end

        #Algoritmo de selección
        if opcion_usuario == 'piedra'
            if opcion_maquina_string == 'piedra'
                puts "Computadora juega piedra\nEmpataste"
                exit
            elsif opcion_maquina_string == 'papel'
                puts "Computadora juega papel\nPerdiste"
                exit
            else
                #opcion_maquina_string = tijera
                puts "Computadora juega tijera\nGanaste"
                exit
            end
        elsif opcion_usuario == 'papel'
            if opcion_maquina_string == 'piedra'
                puts "Computadora juega piedra\nGanaste"
                exit
            elsif opcion_maquina_string == 'papel'
                puts "Computadora juega papel\nEmpataste"
                exit
            else
                #opcion_maquina_string = tijera
                puts "Computadora juega tijera\nPerdiste"
                exit
            end
        else
            #Opcion usuario es tijera
            if opcion_maquina_string == 'piedra'
                puts "Computadora juega piedra\nGanaste"
                exit
            elsif opcion_maquina_string == 'papel'
                puts "Computadora juega papel\nPerdiste"
                exit
            else
                #opcion_maquina_string = tijera
                puts "Computadora juega tijera\nEmpataste"
                exit
            end
        end
    else
        puts "La opción debe ser piedra, papel o tijera"
        exit
    end
else
    puts "Error, debe ingresar solo una opción"
    exit
end