class Pessoa
	attr_reader(:nome, :idade)
	attr_accessor(:cor_cabelo)

	def initialize(nome, idade, cor_cabelo)
		@nome = nome
		@idade = idade
		@cor_cabelo = cor_cabelo
	end
end

joao = Pessoa.new('Joao', 18, 'Preto')
puts(joao.cor_cabelo)
joao.cor_cabelo = 'Branco'
puts(joao.cor_cabelo)

puts(joao.nome)
joao.nome = 'Jao' #ERRO AQUI POIS nome NÃO TEM MÉTODO DE ATRIBUIÇÃO, APENAS LEITURA
puts(joao.nome)