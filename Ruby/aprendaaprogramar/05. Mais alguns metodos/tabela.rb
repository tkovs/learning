tamanho = 50
parte = (tamanho - 'Capítulo x:  '.length) / 2
puts parte

puts 'Tabela de Conteúdo'.center(tamanho)
puts 'Capítulo 1:  ' + 'Números'.ljust(parte) + 'página 1'.rjust(parte)
puts 'Capítulo 2:  ' + 'Letras'.ljust(parte) + 'página 72'.rjust(parte)
puts 'Capítulo 3:  ' + 'Variáveis'.ljust(parte) + 'página 118'.rjust(parte)

#                Tabela de Conteúdo                
#Capítulo 1:  Números                     página 1
#Capítulo 2:  Letras                     página 72
#Capítulo 3:  Variáveis                 página 118