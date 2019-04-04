#
utilidades = (ARGV[0].to_i * ARGV[1].to_i) - ARGV[2].to_i

if utilidades > 0
    resultado = (utilidades * 0.65).to_i
end

puts "El resultado es #{resultado}"