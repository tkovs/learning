{-
	Using library functions, define a function have :: [a] -> ([a],[a]) that
	splits an even-lengthed list into two halves. For example:

	> halve [1,2,3,4,5,6]
	([1,2,3],[4,5,6])
-}

halve :: [a] -> ([a],[a])
halve [] = ([],[])
halve xs = (start,end)
	where
		start = take half xs
		end = drop half xs
		half = div (length xs) 2