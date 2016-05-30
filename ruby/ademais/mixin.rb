module Gato
	def miar
		puts 'Miau'
	end
end

module Cachorro
	def latir
		puts 'Au-Au!'
	end
end

class Pessoa
	include Gato
	include Cachorro

	def falar
		puts 'mas gente'
	end
end

eu = Pessoa.new()
eu.falar
eu.latir
eu.miar