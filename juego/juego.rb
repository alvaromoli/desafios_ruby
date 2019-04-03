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

    else
        puts "La opción debe ser piedra, papel o tijera"
        exit
    end
else
    puts "Error, debe ingresar solo una opción"
    exit
end