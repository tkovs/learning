{-
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
-}

import Data.List (nub)

divisors :: Int -> [Int]
divisors n = (1:) $ nub $ concat [[x, div n x] | x <- [2..limit], rem n x == 0 ]
     where limit = (floor.sqrt.fromIntegral) n

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = (length $ divisors n) == 1

primes :: [Int]
primes = filter (isPrime) [2..]

main = putStrLn $ show $ sum $ takeWhile (<2000000) primes