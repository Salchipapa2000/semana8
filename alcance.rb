$global = 10
def prueba
local = 5
puts "Dentro de la función: local = #{local}, global = #{$global}"
end
prueba
puts "Fuera de la función: global = #{$global}"
# puts local # Esto dará error