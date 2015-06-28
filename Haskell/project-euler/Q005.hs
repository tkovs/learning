{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

-- This solution is so slow

foo :: Int -> [Int] -> Bool
foo x [] = True
foo x (y:ys)
  | mod x y /= 0 = False
  | otherwise = foo x ys

smallest :: Int -> Int
smallest x
  | foo x [1..20] == True = x
  | otherwise = smallest next
  	where next = x + 20

main = putStrLn $ show $ smallest 20
