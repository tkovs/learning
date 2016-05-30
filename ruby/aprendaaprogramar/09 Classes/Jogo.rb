class Jogo
  attr_reader(:limite, :sorteio, :tentativas)

  def initialize(limite = 1000, tentativas = 10)
    @limite = limite
    @tentativas = tentativas
    self.sortear()
  end

  def sortear()
    @sorteio = 1 + rand(@limite)
  end

  def dica(tentativa)
    return "=> Dica: x é maior que #{tentativa.to_s()}" if (@sorteio > tentativa)
    return "=> Dica: x é menor que #{tentativa.to_s()}" if (@sorteio < tentativa)
  end
  
  def jogar()
    puts("=> Tentativas restantes: #{@tentativas}")
    print('Adivinhe o valor de x (1~' + @limite.to_s() + '): ')
    entrada = gets.to_i()
    @tentativas = @tentativas - 1

    while (entrada != @sorteio)
      puts(self.dica(entrada))
      
      if (@tentativas == 0)
        print('Infelizmente você perdeu :(')
        return()
      end

      puts("=> Tentativas restantes: #{@tentativas}")

      print('Insira um novo valor (1~' + @limite.to_s() + '): ')
      entrada = gets.to_i()
      @tentativas = @tentativas - 1
    end

    puts('Parabéns! Você venceu, restando mais ' + @tentativas.to_s() + '.')
  end
end