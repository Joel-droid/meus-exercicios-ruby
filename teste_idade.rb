def solicitar_idade
  puts "Digite sua idade:"
  idade = gets.chomp.to_i
  return idade
end

def verificar_idade(idade)
  if idade < 0
    puts "Idade inválida! Tente novamente."
  elsif idade >= 18
    puts "Você é maior de idade."
  else
    puts "Você é menor de idade."
  end
end

idade = solicitar_idade
verificar_idade(idade)