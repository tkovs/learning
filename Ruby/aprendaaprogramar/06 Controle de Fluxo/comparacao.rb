puts 1 < 2
puts 1 > 2
puts 1 == 2
puts 1 != 2

#Há um porém: os computadores costumam ordenar letras maiúsculas antes de minúsculas, como se
#viessem antes (é assim que guardam as letras em fontes, por exemplo: todas as letras maiúsculas 
#primeiro, seguidas das minúsculas). Isso significa que o computador vai pensar que 'Zoológico' 
#vem antes de 'abelha', então se você quiser descobrir qual palavra viria primeiro num dicionário 
#de verdade, use downcase (ou upcase ou capitalize) em ambas as palavras antes de tentar
#compará-las. 

puts 'cachorro' < 'gato'