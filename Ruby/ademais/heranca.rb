#Não há herança múltipla, apenas simples

class Pessoa

	def andar()
		puts 'Andando...'
	end
end

class Atleta < Pessoa
	def correr()
		puts 'Correndo...'
	end
end

joao = Atleta.new
joao.correr()
joao.andar()