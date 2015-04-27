oddNumbers = [1, 3, 5, 7, 9]
pairNumbers = [2, 4, 6, 8, 10]

-- Adicionar no início da lista
-- x valor
-- y lista
addBeginList x y = x : y

-- Adicionar no fim da lista
-- x lista
-- y lista
addEndList x y = x ++ y

-- Elemento específico de uma lista
-- x lista
-- y elemento
elementList x y = x !! y

-- head [5, 4, 3, 2, 1]
-- 5

-- tail [5, 4, 3, 2, 1]
-- [4, 3, 2, 1]

-- last [5, 4, 3, 2, 1]
-- 1

-- init [5, 4, 3, 2, 1]
-- [5, 4, 3, 2]

-- length [6, 6, 6]
-- 3

-- null [1, 2, 3]
-- False
-- null []
-- True

-- Função que recebe uma lista e retorna o inverso da mesma
-- Exemplo de entrada: [1,2,3]
-- Exemplo de saída: [3,2,1]
-- Método 1

inverso_auxiliar :: [x] -> [x] -> [x]
inverso_auxiliar [] l_inv     = l_inv
inverso_auxiliar (x:xs) l_inv = inverso_auxiliar xs l_inv++[x]

inverso_lista1 :: [x] -> [x]
inverso_lista1 [] = []
inverso_lista1 l  = inverso_auxiliar l []

-- Método 2

inverso :: [x] -> [x]
inverso []     = []
inverso (x:xs) = inverso xs ++ [x]

{-
inverso [1,2,3,4] = inverso [2,3,4] ++ [1]
inverso [2,3,4] = inverso[3,4] ++ [2]
inverso [3,4] = inverso [4] ++ [3]
inverso [4] = inverso [] ++ 4
inverso [] = []

inverso [1,2,3,4] = inverso [2,3,4] ++ [1]
inverso [2,3,4] = inverso[3,4] ++ [2]
inverso [3,4] = inverso [4] ++ [3]
inverso [4] = [] ++ [4]
inverso [] = []

inverso [1,2,3,4] = inverso [2,3,4] ++ [1]
inverso [2,3,4] = inverso[3,4] ++ [2]
inverso [3,4] = inverso [4] ++ [3]
inverso [4] = [4]
inverso [] = []

inverso [1,2,3,4] = inverso [2,3,4] ++ [1]
inverso [2,3,4] = inverso[3,4] ++ [2]
inverso [3,4] = [4] ++ [3]
inverso [4] = [4]
inverso [] = []

inverso [1,2,3,4] = inverso [2,3,4] ++ [1]
inverso [2,3,4] = inverso[3,4] ++ [2]
inverso [3,4] = [4,3]
inverso [4] = [4]
inverso [] = []

inverso [1,2,3,4] = inverso [2,3,4] ++ [1]
inverso [2,3,4] = [4,3] ++ [2]
inverso [3,4] = [4,3]
inverso [4] = [4]
inverso [] = []

inverso [1,2,3,4] = inverso [2,3,4] ++ [1]
inverso [2,3,4] = [4,3,2]
inverso [3,4] = [4,3]
inverso [4] = [4]
inverso [] = []

inverso [1,2,3,4] = [4,3,2] ++ [1]
inverso [2,3,4] = [4,3,2]
inverso [3,4] = [4,3]
inverso [4] = [4]
inverso [] = []

inverso [1,2,3,4] = [4,3,2,1]
inverso [2,3,4] = [4,3,2]
inverso [3,4] = [4,3]
inverso [4] = [4]
inverso [] = []

inverso [1,2,3,4] = [4,3,2,1]
-}

-- Verifica se x lista possue y elemento
possue :: [Int] -> Int -> Bool
possue [] _ = False
possue (x:xs) y
    | x == y = True
    | otherwise = possue xs y

-- Retorna o maior valor de uma lista
maior :: [Int] -> Int
maior [x] = x
maior (x:xs)
    | x > maior xs = x
    | otherwise = maior xs

-- Verifica se é uma lista de números pares
todos_pares :: [Int] -> Bool
todos_pares [] = True
todos_pares (x:xs)
    | mod x 2 /= 0 = False
    | otherwise = todos_pares xs

-- Soma de uma lista de inteiros
soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

-- Ordenando lista com Quicksort

quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
	where
	  lesser = filter (< p) xs
	  greater = filter (>= p) xs

-- Ordenar lista de maneira simples de entender mas verbosa

lista :: [Int]
lista = [1, 3, 6, 4, 9, 8, 7, 2, 5]

menor :: [Int] -> Int
menor [x] = x
menor (x:xs)
	| (x < menor xs) = x
	| otherwise = menor xs

remove_menor :: [Int] -> [Int]
remove_menor [] = []
remove_menor all@(x:xs)
	| (x == menor all) = xs
	| otherwise = x : remove_menor xs

ordena :: [Int] -> [Int]
ordena [] = []
ordena lista = ordena_auxiliar [] lista

ordena_auxiliar :: [Int] -> [Int] -> [Int]
ordena_auxiliar ordenada [] = ordenada
ordena_auxiliar ordenada all@(x:xs) = ordena_auxiliar (ordenada ++ [menor all]) (remove_menor (x:xs))