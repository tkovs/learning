-- Lista 10 valores em sequência iniciando pelo x.
basic x = [y | y <- [x..x+10]]

-- Lista todos valores pares no intervalo de x a y
pair x y = [s | s <- [x..y], s `mod` 2 == 0]


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
diy x = if bis x == 1
			then 366
			else 365

-- Informa quantidade de dias que há somando determinados anos
-- days [1892, 1896, 1900, 1904]
-- ESTÁ ERRADO
-- days x = sum [s | a <- x, s <- diy a]
days x = sum [diy s | s <- x]
-- ghci> days [1900, 1902, 1903, 1904, 1908, 2013]
-- 2192
-----------------------------------

