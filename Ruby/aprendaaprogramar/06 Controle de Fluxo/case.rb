puts 'Qual a sua idade?'
idade = gets.to_i

case idade
	when 0..2
		puts 'Bebê'
	when 3..6
		puts 'Criança pequena'
	when 7..12
		puts 'Criança'
	when 12..18
		puts 'Jovem'
	else
		puts 'Adulto'
end