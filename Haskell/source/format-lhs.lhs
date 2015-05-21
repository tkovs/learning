Exemplo de um arquivo no formato .lhs onde o que não vier depois de um '>'
não é código

Um valor qualquer

> value :: Int
> value = 50

> list :: [Int]
> list = [1..10]

> newline :: Char
> newline = '\n'

Minha função soma

> sum' :: [Int] -> Int
> sum' [] = 0
> sum' (x:xs) = x + sum xs

Minha função map

> map' :: (x -> y) -> [x] -> [y]
> map' _ []     = []
> map' f (x:xs) = (f x) : (map' f xs) -- Ou map' f x = [f x | x <- x]
  