-- Informa se ano é bissexto ou não
-- bis x = if (x `mod` 4 == 0) && (x `mod` 100 /= 0)
-- 			then 1
-- 			else if (x `mod` 400 == 0)
-- 				then 1
-- 				else 0

-- Informa se ano é bissexto ou não
-- Retorna quantidade de dias no ano x
-- diy x = if bis x == 1
--			then 366
--			else 365

bis :: (Integral x) => x -> x
bis x  
    | aux = 1
    | x `mod` 400 == 0 = 1
    | otherwise   = 0
    where aux = x `mod` 4 == 0 && x `mod` 100 /= 0

-- Retorna quantidade de dias no ano x
diy :: (Integral x) => x -> x
diy x
    | bis x == 1 = 366
    | otherwise  = 365

-- Informa quantidade de dias que há somando determinados anos
days x = sum [diy s | s <- x]