{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}

import Data.List (nub)

is_prime :: Int -> Bool
is_prime n = (length $ divisors n) == 1

divisors :: Int -> [Int]
divisors n = (1:) $ nub $ concat [[x, div n x] | x <- [2..limit], rem n x == 0 ]
     where limit = (floor.sqrt.fromIntegral) n

main = putStrLn $ show $ last $ filter (is_prime) $ divisors 600851475143