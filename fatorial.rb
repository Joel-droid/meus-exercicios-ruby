# fatorial.rb - calcula fatorial de um número inteiro não-negativo
# Versões: iterativa, recursiva e idiomática

def fatorial_iterativo(n)            # [1]
  result = 1                         # [2]
  for i in 1..n                      # [3]
    result *= i                      # [4]
  end                                # [5]
  result                             # [6]
end                                  # [7]

def fatorial_recursivo(n)            # [8]
  return 1 if n <= 1                 # [9]
  n * fatorial_recursivo(n - 1)      # [10]
end                                  # [11]

def fatorial_reduce(n)               # [12]
  (1..n).reduce(1, :*)                # [13]
end                                  # [14]

print "Digite um número inteiro não-negativo: "  # [15]
input = gets&.strip                               # [16]

begin                                             # [17]
  n = Integer(input)                              # [18]
rescue ArgumentError, TypeError                   # [19]
  puts "Entrada inválida. Informe um número inteiro (ex: 5)."  # [20]
  exit                                            # [21]
end                                               # [22]

if n < 0                                          # [23]
  puts "Fatorial não definido para números negativos."  # [24]
  exit                                            # [25]
end                                               # [26]

puts "Iterativo: #{n}! = #{fatorial_iterativo(n)}"      # [27]
puts "Recursivo: #{n}! = #{fatorial_recursivo(n)}"      # [28]
puts "Reduce (idiomático): #{n}! = #{fatorial_reduce(n)}" # [29]
