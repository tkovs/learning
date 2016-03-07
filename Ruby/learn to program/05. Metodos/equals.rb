a = 5

puts 'Adivinhe o número da minha variável: '
print '> '
entrada = gets.to_i

if (a.eql?(entrada))
	puts 'Acertou, mizeraviss!'
else
	puts 'Errrrrrrouuuuuu!!!'
end