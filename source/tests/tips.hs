-- I can to test programs using this idea:
-- Test: ghci> pair n
-- It's a simple example, but it can be used in complex problems.

n = 10

pair :: (Integral i) => i -> String
pair i
	| mod i 2 == 0 = "Pair"
	| otherwise = "Odd"



-- 	unsigned int factorial(unsigned int n) {
-- 		if (n == 0)	return 1;
-- 		return = n * factorial(n - 1)
-- 	}

-- 	factorial :: (Integral i) => i -> i
-- 	factorial i
-- 		| zero      = 1
-- 		| otherwise = i * factorial (i - 1)
-- 		where zero = i == 0