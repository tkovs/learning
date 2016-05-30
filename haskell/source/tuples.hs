tuple :: [(Int, Int)]
tuple = [(1,2), (3,4), (5,6)]

-- Listas são homogêneas, diferente de tuplas
people :: (String, String, Int)
people = ("Christopher", "Walken", 55)

-- Não se compara tuplas de tamanhos diferentes,
-- diferente de listas.
comp :: Bool
comp = ("Joao", 17) == ("Vitor", 11)
-- ghci> comp
-- False

-- fst e snd retornam, respectivamente, o primeiro e
-- o segundo elemento da tupla. Funcionam apenas com
-- tuplas com dois elementos
ex :: (Int, String)
ex = (2015, "Fevereiro")
-- ghci> fst ex
-- 2015
-- ghci> snd ex
-- "Fevereiro"

-- Reescrevendo a função zip
zip' :: [a] -> [b] -> [(a,b)]
zip' (a:b) (c:d) = (a,c) : zip' b d
zip' _ _ = []

-- Reescrevendo a função unzip
-- -- [(1,2), (3,4), (5,6)]
-- -- ([1,3,5], [2,4,6])
unzip' :: [(a, b)] -> ([a], [b])
unzip' a = (map (fst) a, map(snd) a)

-- Funçao que produz lista de pares: zip
-- ghci> zip [1, 2, 3] [11, 12, 13]
-- [(1,11),(2,12),(3,13)]

-- Juntar lista de palavras com lista de strings
number = [1, 2, 3, 4, 5]
word = ["um", "dois", "tres", "quatro", "cinco"]
myzip = zip number word
-- ghci> myzip
-- [(1,"um"),(2,"dois"),(3,"tres"),(4,"quatro"),(5,"cinco")]

-- Não é possível zip lista finita com lista infinita, quando a lista finita
-- chegar no fim a função zip acaba
-- ghci> zip [1..] ["banana", "laranja", "melancia", "uva"]  
-- [(1,"banana"),(2,"laranja"),(3,"melancia"),(4,"uva")]

-- "Que triângulo retângulo que tem números inteiros para 
-- todos os lados e todos os lados iguais ou menores que 10 
-- e tem um perímetro de 24?"
-- Minha versão
triangles       = [(a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a^2 + b^2 == c^2, a + b + c == 24]
-- Versão "correta" WTFFFFFFFFFFFFFFF
rightTriangles' = [(a, b, c) | c <- [1..10], b <- [1..c],  a <- [1..b],  a^2 + b^2 == c^2, a + b + c == 24] 
-- ghci> rightTriangles'  
-- [(6,8,10)]
-- ghci> triangles
-- [(6,8,10),(8,6,10)]
