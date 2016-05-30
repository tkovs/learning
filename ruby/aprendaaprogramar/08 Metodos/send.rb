class Pessoa
    def fala
        puts 'Ola!'
    end
end

Pessoa.new.fala()
Pessoa.new.send(:fala)