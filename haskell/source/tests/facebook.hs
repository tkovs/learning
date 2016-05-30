palindrome :: Eq a => [a] -> Bool
palindrome a = (equals a (reverse' a))

bin :: Int -> [Int]
bin 0 = []
bin x = bin (div x 2) ++ [mod x 2]

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

equals :: Eq a => [a] -> [a] -> Bool
equals [] [] = True
equals (x:xs) (y:ys)
	| x == y = equals xs ys
	| otherwise = False

main = do
	x <- readLn
	print $ palindrome $ bin x