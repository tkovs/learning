module TAD where

push :: Ord t => [t] -> t -> [t]
push [] y = [y]
push all@(x:xs) y
    | y <= x = [y] ++ all
    | otherwise = [x] ++ push xs y

pop :: Ord t => [t] -> t -> [t]
pop [] _ = []
pop (x:xs) y
    | x == y = xs
    | otherwise = [x] ++ pop xs y

exists :: Eq t => [t] -> t -> Bool
exists [] _ = False
exists (x:xs) y
    | x == y = True
    | otherwise = exists xs y