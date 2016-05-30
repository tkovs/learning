comidas = ['feijoada', 'tapioca', 'bolo de fubá']

puts comidas
puts
puts comidas.to_s
puts
puts comidas.join(', ') #semelhante ao to_s, porém insere uma string nos intervalos

comidas.each do |comida|
	puts comida
end