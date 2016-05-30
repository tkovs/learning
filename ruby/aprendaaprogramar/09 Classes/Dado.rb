class Dado
	def initialize
		rolar
	end

	def rolar(i = 1)
		@lista = []

		i.times do
			@lista.push((1 + rand(6)))
		end

		return(@lista)
	end

	def mostrar
		puts @lista.to_s()
	end
end

puts Dado.new.rolar()

dado = Dado.new
dado.mostrar()