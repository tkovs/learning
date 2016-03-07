gosto = Proc.new do |coisa|
	puts 'Eu gosto de ' + coisa + '!'
end

gosto.call('cereja')