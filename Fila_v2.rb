# Fila de atendimento simples

# Criamos uma fila vazia (array)
fila = []

# Caixa começa livre
caixa_ocupado = false

# Simulamos 5 clientes chegando
10.times do |i|
  cliente = "cliente #{i+1}"
  puts "#{cliente} chegou."

  if caixa_ocupado
    puts "#{cliente} entrou na fila."
    fila << cliente
  else
    puts "#{cliente} está sendo atendido."
    caixa_ocupado = true
  end
end

puts "\n--- Atendendo fila ---"
# Agora atendemos quem ficou esperando
fila.each do |c|
  puts "#{c} está sendo atendido."
end
