precio = ARGV
n_usuarios = ARGV
gastos = ARGV

utilidades = (ARGV[0].to_i * ARGV[1].to_i) - ARGV[2].to_i

if utilidades > 0
    resultado = (utilidades - (utilidades * 0.35)).to_i
end

puts (resultado)