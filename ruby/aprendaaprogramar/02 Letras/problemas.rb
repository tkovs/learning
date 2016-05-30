#puts 'oi' + 5
#puts '12' + 12
#no implicit conversion of Fixnum into String (TypeError)

#String can't be coerced into Fixnum (TypeError)
#puts 5 * 'porco'

#Uma coisa que você deve saber: você pode escrever 'porco'*5 em um programa, já que isso apenas quer dizer 5 conjuntos da string 'porco', todas adicionadas entre si. Entretanto, você não pode escrever 5*'porco', já que isso significa 'porco' conjuntos do número 5, o que é um pouco insano. 

puts 'porco' * 5