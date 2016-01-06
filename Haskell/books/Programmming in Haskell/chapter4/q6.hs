{-
	Show how the curried function definition mult x y z = x * y * z can be
	understood in terms of lambda expressions.
-}

mult :: Num a => a -> a -> a -> a
mult = \x -> (\y -> (\z -> x * y * z))