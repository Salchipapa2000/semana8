2/3

def cambia_numero(x)
x = x + 1
end
def cambia_lista(lista)
lista << "nuevo"
end
num = 7
lista = ["a", "b"]
cambia_numero(num)
cambia_lista(lista)
puts "Número: #{num}" # sigue siendo 7
puts "Lista: #{lista}" # ahora ["a", "b", "nuevo"]