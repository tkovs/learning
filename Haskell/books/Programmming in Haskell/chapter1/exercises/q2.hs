-- Show that sum [x] = x for any number x

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum xs

{--
The sum of [x] is x + sum []. sum [] = 0, so sum [x] = x + 0, that results x.

Example of sum in a list:

sum [1,2,3,4,5]
1 + sum [2,3,4,5]
1 + (2 + sum [3,4,5])
1 + (2 + (3 + sum [4,5]))
1 + (2 + (3 + (4 + sum [5])))
1 + (2 + (3 + (4 + (5 + sum []))))
1 + (2 + (3 + (4 + (5 + (0)))))
1 + (2 + (3 + (4 + (5))))
1 + (2 + (3 + (9)))
1 + (2 + (12))
1 + (14)
15
--}
