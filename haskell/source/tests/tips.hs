-- I can to test programs using this idea:
-- Test: ghci> pair n
-- It's a simple example, but it can be used in complex problems.

n = 1

pair :: (Integral i) => i -> String
pair i
    | mod i 2 == 0 = "Pair"
    | otherwise = "Odd"

max' :: (Integral) x => x -> x -> x
max' x y
    | x > y = x
    | otherwise = y

foo :: (Integral x) => [x] -> x
foo [x]    = x
foo (x:xs) = max' x (foo xs)
--	| x > foo xs = x
--	| otherwise = foo xs
--  | max x foo xs

-- 	unsigned int factorial(unsigned int n) {
-- 		if (n == 0)	return 1;
-- 		return = n * factorial(n - 1)
-- 	}

-- 	factorial :: Int -> Int
-- 	factorial 0 = 1
--  factorial n = n * factorial (n - 1)

-- if (example)
bigger :: Int -> Int -> Int
bigger x y = if x > y
                 then x 
                 else y

-- case (example)
bigger' :: Int -> Int -> Int
bigger' x y = case question of
                True -> x
                False -> y
                where question = (x > y)

-- guards (example)
bigger'' :: Int -> Int -> Int
bigger'' x y
    | x > y     = x
    | otherwise = y

-- lambda function
half :: [Double] -> [Double]
half [] = []
half a = map func a
        where func = (\x -> x / 2)