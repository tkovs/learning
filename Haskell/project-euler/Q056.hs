{-
A googol (10100) is a massive number: one followed by one-hundred zeros;
100100 is almost unimaginably large: one followed by two-hundred zeros.
Despite their size, the sum of the digits in each number is only 1.

Considering natural numbers of the form, ab, where a, b < 100, what is
the maximum digital sum?
-}

import Data.Char (digitToInt)

sumDigits :: Int -> digitToInt
sumDigits n = sum $ map digitToInt $ show n

numbers :: [Int]
numbers = [a^b | a <- [1..100], b <- [1..100]]

main = putStrLn $ show $ maximum $ map sumDigits numbers