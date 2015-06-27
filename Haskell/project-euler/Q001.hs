{-
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000.
-}

multiples :: Int -> Int -> [Int]
multiples n limit = [n | n <- [n, n+n..limit-1]]

sum_multiples :: Int -> Int -> Int
sum_multiples n limit = sum (multiples n limit)

main = putStrLn $ show $ (sum_multiples 3 1000) + (sum_multiples 5 1000) - (sum_multiples 15 1000)
