{-
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains
10 terms. Although it has not been proved yet (Collatz Problem), it is thought
that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
-}

import Data.List (sort, elemIndex)

collatz :: Int -> [Int]
collatz 1 = []
collatz n | even n    = _even : collatz _even
		  | otherwise = _odd  : collatz _odd
		      where
		      	_even = div n 2
		      	_odd  = 3 * n + 1

collatz' :: Int -> [Int]
collatz' n = n : collatz n

lengths :: [(Int, Int)]
lengths = [(a, b) | a <- [1..], b <- [length $ collatz' a]]
-- lengths = zip [1..] (map length $ map collatz' [1..])

greater_sequence :: Int
greater_sequence = maximum $ snd $ unzip $ take 1000000 lengths

main = putStrLn $ show $ seq !! index
	     where
	   	   index = (\(Just i) -> i) $ elemIndex greater_sequence (snd $ unzip $ take 1000000 lengths)
	   	   seq = fst $ unzip $ take 1000000 lengths