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