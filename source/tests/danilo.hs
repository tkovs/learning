quicksort [] = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
      lesser = filter (< p) xs
      greater = filter (>= p) xs

pair x = mod x 2 == 0