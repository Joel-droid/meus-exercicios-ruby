puts "Qual seu nome?"
nome = gets.chomp

puts "Por favor, digite a primeira nota:"
nota1 = gets.chomp.to_f

puts "Por favor, digite a segunda nota:"
nota2 = gets.chomp.to_f

media = (nota1 + nota2) / 2

puts "Sua média é: #{media}"

if media >= 6
  puts "#{nome}, você foi APROVADO!"
else
  puts "#{nome}, você foi REPROVADO!"
end
