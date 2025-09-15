fila = []                # Cria a fila vazia
clientes_atendidos = 0   # Contador de clientes atendidos
clientes_nao_atendidos = 0 # Contador de clientes que ficaram de fora
limite_fila = 3          # Capacidade máxima da fila

# Simulação da chegada de 6 clientes
(1..6).each do |i|
  puts "Cliente #{i} chegou."

  if fila.empty?         # Se a fila está vazia, o cliente é atendido de imediato
    puts "Cliente #{i} está sendo atendido."
    clientes_atendidos += 1
  elsif fila.size < limite_fila  # Se a fila ainda não atingiu o limite
    fila << "Cliente #{i}"
    puts "Cliente #{i} entrou na fila."
  else
    puts "Fila cheia! Cliente #{i} foi embora sem ser atendido."
    clientes_nao_atendidos += 1
  end
end

# Depois de todos chegarem, atendemos os que ficaram na fila
puts "\n--- Atendendo fila ---"
fila.each do |cliente|
  puts "#{cliente} está sendo atendido."
  clientes_atendidos += 1
end

# Relatório final
puts "\n--- Relatório Final ---"
puts "Clientes atendidos: #{clientes_atendidos}"
puts "Clientes não atendidos (fila cheia): #{clientes_nao_atendidos}"

puts "\n--- Atendendo fila ---"
fila.each do |cliente|
  puts "#{cliente} está sendo atendido."
  clientes_atendidos += 1
end

puts "\n--- Relatório Final ---"
puts "Clientes atendidos: #{clientes_atendidos}"
puts "Clientes não atendidos (fila cheia): #{clientes_nao_atendidos}"

