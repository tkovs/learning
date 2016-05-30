puts 'Olá! Eu sou vidente. Qual é o seu nome?'
nome = gets.chomp
puts 'Olá, ' + nome

if nome == 'João' then
	puts 'Vejo coisas incríveis no seu futuro!'
elsif nome == 'Vitor' then
	puts 'Ok.. É um futuro maneiro, digamos assim'
else
	puts 'Seu futuro é... Ó, Deus! Olha a hora!'
	puts 'Eu tenho que ir, mil perdões!'
end