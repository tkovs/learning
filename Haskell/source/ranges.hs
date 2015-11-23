-- Apenas uma etapa pode ser especificada

-- Forma simplificada de criar listas
-- ghci> alfabeto
-- "abcdefghijklmnopqrstuvwxyz"
alfabeto = ['a'..'z']

-- Valores ímpares de 1 a 100
odds = [1, 3 .. 100]

-- Decrescente
-- errado:
-- 	dec = [20..1]
-- correto:
dec = [20, 19 .. 1]

-- Primeiros 20 múltiplos de 15
tt = [15, 30.. 20*15]
-- Porém, há uma forma melhor
tt' = take 20 [15, 30..]

-- repeat
rp = take 10 (repeat 666)
-- ghci> rp
-- [666,666,666,666,666,666,666,666,666,666]

-- cycle
cy = take 10 (cycle [1, 2, 3])
-- ghci> cy
-- [1,2,3,1,2,3,1,2,3,1]

-- replicate
rc = replicate 3 6
-- ghci> rc
-- [6,6,6]
