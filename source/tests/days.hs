-- Informa se ano é bissexto ou não
-- bis x = if (x `mod` 4 == 0) && (x `mod` 100 /= 0)
-- 			then 1
-- 			else if (x `mod` 400 == 0)
-- 				then 1
-- 				else 0

-- Retorna quantidade de dias no ano x
-- Days in year
-- diy x = if bis x == 1
-- 			then 366
-- 			else 365

-- Informa quantidade de dias que há somando determinados anos
-- days [1892, 1896, 1900, 1904]
-- ESTÁ ERRADO
-- days x = sum [s | a <- x, s <- diy a]
-- days x = sum [diy s | s <- x]
-- bissexto: 1904, 1908
-- comum: 1900, 1902, 1903, 2013
-- nem bissexto nem comum: seriously? are you crazy?
-- ghci> days [1900, 1902, 1903, 1904, 1908, 2013]
-- 2192

-- Informa se ano é bissexto ou não
bis x = if (x `mod` 4 == 0) && (x `mod` 100 /= 0)
			then 1
			else if (x `mod` 400 == 0)
				then 1
				else 0

-- Retorna quantidade de dias no ano x
diy x = if bis x == 1
			then 366
			else 365

-- Informa quantidade de dias que há somando determinados anos
days x = sum [diy s | s <- x]