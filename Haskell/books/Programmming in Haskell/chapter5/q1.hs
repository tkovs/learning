{-
	Using a list comprehension, give an expression that calculates the sum 1² + 
	2² + ... 100² of the first one hundred integer squares.
-}

answer :: Integer
answer = sum [x^2 | x <- [1..100]]