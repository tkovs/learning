-- Nome de função não começa em maiúsculo.
-- Quando uma função não tem nenhum parâmetro, "nós" normalmente 
-- chamamos isto de definição.

doubleMe x = x + x

--doubleUs x y = x*2 + y*2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
						then x
						else x*2

vitorRodrigues = "Este sou eu (mentira), Vitor Rodrigues!"