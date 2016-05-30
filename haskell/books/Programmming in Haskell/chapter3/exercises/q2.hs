{-
	What are the types of the following functions?

	second xs = head (tail xs)
	swap (x,y) = (y,x)
	pair x y = (x,y)
	double x = x * 2
	palindrome xs = reverse xs == xs
	twice f x = f (f x)

	Hint: take care to include the necessary class constraints if the functions
	are defined using overloaded operators.
-}

second :: [a] -> a
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

pair :: a -> b -> (a,b)
pair x y = (x,y)

double :: Num a => a -> a
double x = x * 2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)