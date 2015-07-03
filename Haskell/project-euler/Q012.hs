triangle :: Int -> Int
triangle x = sum [1..x]

divisors :: Int -> Int
divisors x = length [y | y <- [1..(div x 2)] ++ [x], mod x y == 0]

answer :: Int -> Int -> Int
answer x limit
	| (divisors $ triangle x) > limit = triangle x
	| otherwise = answer (x + 1) limit

main = putStrLn $ show $ answer 1 50