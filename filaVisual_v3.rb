fila = []              # 1. Inicializa a fila vazia
caixa_ocupado = false   # 2. O caixa começa livre

10.times do |i|          # 3. Vamos simular 5 clientes
  cliente = "Cliente #{i+1}"  # 4. Criar nome do cliente
  puts "#{cliente} chegou."    # 5. Mostrar que chegou

  if caixa_ocupado            # 6. Verificar se o caixa está ocupado
    puts "#{cliente} entrou na fila." # 7. Cliente vai para a fila
    fila << cliente                     # 8. Adiciona cliente no final do array
  else
    puts "#{cliente} está sendo atendido." # 9. Atende cliente direto
    caixa_ocupado = true                   # 10. Marca caixa como ocupado
  end

  # 11. Mostrar fila atual
  puts "Fila agora: #{fila}"
  puts "--------------------"
end

puts "\n--- Atendendo fila ---"
fila.each do |c|
  puts "#{c} está sendo atendido."
end
