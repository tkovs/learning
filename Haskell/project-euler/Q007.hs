import Data.List (nub)

is_prime :: Int -> Bool
is_prime n = (length $ divisors n) == 1

divisors :: Int -> [Int]
divisors n = (1:) $ nub $ concat [[x, div n x] | x <- [2..limit], rem n x == 0 ]
     where limit = (floor.sqrt.fromIntegral) n

main = putStrLn $ show $ primes !! 10001
       where primes = filter (is_prime) [1..]