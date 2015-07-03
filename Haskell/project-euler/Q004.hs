
{-
A palindromic number reads the same both ways. The largest palindrome made from
the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
-}

numbers :: [Int]
numbers = [a * b | a <- [10..99], b <- [a..99]]

palindrome :: Int -> Bool
palindrome n = (show n) == (reverse $ show n)

main = putStrLn $ show $ head $ filter (palindrome) $ reverse numbers