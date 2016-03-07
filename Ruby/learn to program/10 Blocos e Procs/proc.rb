def executaProc(proc, a, b)
	proc.call(a, b)
end

soma = Proc.new do |a, b|
	a + b
end

subtracao = Proc.new do |a, b|
	a - b
end

divisao = Proc.new do |a, b|
	a / b
end

multiplicacao = Proc.new do |a, b|
	a * b
end

puts executaProc(soma, 3, 4)
puts executaProc(multiplicacao, 5, 2)