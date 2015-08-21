main = do
	mapM_ putStrLn $ map space $ reverse $ lists 9
		where 
			space = (\x -> concat $ map (\x -> show x ++ " ") x)
			lists = (\x -> map (\x -> [1..x]) [1..x])

{-
output
1 2 3 4 5 6 7 8 9 
1 2 3 4 5 6 7 8 
1 2 3 4 5 6 7 
1 2 3 4 5 6 
1 2 3 4 5 
1 2 3 4 
1 2 3 
1 2 
1 
-}