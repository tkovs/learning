{-
	Consider a function safetail :: [a] -> [a] that behaves as the library
	function tail, except that safetail maps the empty list to itself, whereas
	tail produces an error in this case. Define safetail using:

	(a) a conditional expression;
	(b) guarded equations;
	(c) pattern matching.

	Hint: make use of the library function null.
-}

-- (a)
safetail :: [a] -> [a]
safetail xs = if (null xs) then [] else tail xs

-- (b)
safetail :: [a] -> [a]
safetail xs
	| null xs = [] 
	| otherwise = tail xs

-- (c)
safetail :: [a] -> [a]
safetail [] = []
satefail (_:xs) = xs