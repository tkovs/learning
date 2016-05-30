-- Detalhe que demorei pra perceber: 
-- [a | a <- b]
-- O  *a* poderia ser trocado pelo *b*. É permitido repetir, assim:
-- [b | b <- b]
-- Assim, é possível fazer isso:
-- basic x = [x | x <= [x..x+10]]

------------------------------------------

-- Lista 10 valores em sequência iniciando pelo x.
basic x = [y | y <- [x..x+10]]

-- Lista todos valores pares no intervalo de x a y
pair x y = [s | s <- [x..y], s `mod` 2 == 0]

-- Vários predicados
-- Exibe todos os valores que não forem divisiveis por 5 ou 3
spr x = [y | y <- x, y `mod` 3 /= 0, y `mod` 5 /= 0]
-- ghci> spr [1..30]
-- [1,2,4,7,8,11,13,14,16,17,19,22,23,26,28,29]

-- Combinação de listas
-- Produto das combinações das duas listas
comb x y = [a * b | a <- x, b <- y]
-- ghci> comb [1, 2, 3] [10, 20, 30]
-- [10,20,30,20,40,60,30,60,90]

-- Combina lista de adjetivos com lista de substantivos:
substantivos = ["gerente","programador","cliente"]
adjetivos = ["malemolente","chato","fofoqueiro"]
haha = [substantivos ++ " " ++ adjetivos | substantivos <- substantivos, adjetivos <- adjetivos]

-- Recriando função length
length' x = sum [1 | _ <- x]
-- _ significa que não me importo com o que vamos extrair da 
-- lista, ao invés de escrever o nome da variável que nunca 
-- será usada, basta escrever _.

-- Remover todas letras maiúsculas de uma string
remupp x = [x | x <- x, x `elem` ['a'..'b']]

-----------------------------------
-- Fiz depois de ler isso
-- https://www.facebook.com/groups/linguagemc/permalink/703023669795376/

-- Informa se ano é bissexto ou não
bis x = if (x `mod` 4 == 0) && (x `mod` 100 /= 0)
			then 1
			else if (x `mod` 400 == 0)
				then 1
				else 0

-- Retorna quantidade de dias no ano x
-- Days in year
diy x = if bis x == 1s
			then 366
			else 365

-- Informa quantidade de dias que há somando determinados anos
-- days [1892, 1896, 1900, 1904]
-- ESTÁ ERRADO
-- days x = sum [s | a <- x, s <- diy a]
days x = sum [diy s | s <- x]
-- bissexto: 1904, 1908
-- comum: 1900, 1902, 1903, 2013
-- nem bissexto nem comum: seriously? are you crazy?
-- ghci> days [1900, 1902, 1903, 1904, 1908, 2013]
-- 2192
-----------------------------------