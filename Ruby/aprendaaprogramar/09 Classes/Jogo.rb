class Jogo
  def initialize(limite = 1000)
     @limite = limite
     self.sortear()
  end

  def sortear()
     @sorteio = 1 + rand(@limite)
  end

  def dica(_tentativa)
     return '=> [Dica: x é maior que ' + _tentativa.to_s() + ']' if (@sorteio > _tentativa)
     return '=> [Dica: x é menor que ' + _tentativa.to_s() + ']' if (@sorteio < _tentativa)
  end
  
  def jogar()
     print('Adivinhe o valor de x (1~' + @limite.to_s() + '): ')
     _entrada = gets.to_i()

     while (_entrada != @sorteio)
        puts(self.dica(_entrada))
        print('Insira um novo valor (1~' + @limite.to_s() + '): ')
        _entrada = gets.to_i()
     end

     print('Parabéns! Você venceu.')
  end
end