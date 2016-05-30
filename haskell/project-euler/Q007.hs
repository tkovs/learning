{-
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that 
the 6th prime is 13.

What is the 10 001st prime number?
-}

import Data.List (nub)

is_prime :: Int -> Bool
is_prime n = (length $ divisors n) == 1

divisors :: Int -> [Int]
divisors n = (1:) $ nub $ concat [[x, div n x] | x <- [2..limit], rem n x == 0 ]
     where limit = (floor.sqrt.fromIntegral) n

main = putStrLn $ show $ primes !! 10001
       where primes = filter (is_prime) [1..]