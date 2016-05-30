-- Define a function product that produces the product of a list of numbers,
-- and show using your definition that product [2,3,4] = 24.

product' :: Num a => [a] -> a
product' [] = 0
product' (x:xs) = x * product xs

main :: IO ()
main = do
    print $ product' [2,3,4]
