-- How shold the definition of the function qsort be modified so that it
-- produces a reverse sorted version of a list?

-- Just change 'smaller ++ [x] ++ greater' to 'greater ++ [x] ++ smaller' :)

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort greater ++ [x] ++ qsort smaller
    where
        smaller = [y | y <- xs, y <= x]
        greater = [y | y <- xs, y >= x]
