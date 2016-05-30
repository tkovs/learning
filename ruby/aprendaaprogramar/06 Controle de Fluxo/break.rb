puts 'Exibir de 1 até que número?'
fim = gets.to_i

for i in 0..fim+10
	puts i
	if i == fim
		break
	end
end