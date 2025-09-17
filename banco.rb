$saldo = 1000 # Variable global

def consultar_saldo
  puts "Tu saldo actual es: #{$saldo}"
end

def depositar(monto)
  $saldo += monto
  puts "Depósito exitoso de #{monto}"
end

def retirar(monto)
  if monto <= $saldo
    $saldo -= monto
    puts "Retiro exitoso de #{monto}"
else
    puts "Fondos insuficientes"
  end
end

# Menú principal
opcion = 0
while opcion != 4
  puts "\n--- Menú Banco ---"
  puts "1. Consultar saldo"
  puts "2. Depositar dinero"
  puts "3. Retirar dinero"
  puts "4. Salir"
  print "Elige una opción: "
  opcion = gets.chomp.to_i

  case opcion
  when 1
    consultar_saldo
  when 2
    print "Ingresa monto a depositar: "
    monto = gets.chomp.to_i
    depositar(monto)
  when 3
    print "Ingresa monto a retirar: "
    monto = gets.chomp.to_i
    retirar(monto)
  when 4
    puts "Gracias por usar el simulador."
  else
    puts "Opción inválida."
  end
end