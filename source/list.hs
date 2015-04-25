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