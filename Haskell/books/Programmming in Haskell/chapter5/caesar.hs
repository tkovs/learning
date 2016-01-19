import Data.Char (ord, chr, isLower)

let2int :: Char -> Int
let2int c = ord c - ord 'a'

int2let :: Int -> Char
int2let n = chr (ord 'a' + n)


shift :: Int -> Char -> Char
shift n c
	| isLower c = int2let ((let2int c + n) `mod` 26)
	| otherwise = c

encode :: Int -> String -> String
encode i xs = [shift i x | x <- xs]

-- Frequency tables to crack

table :: [Float]
table = [8.2, 1.5, 2.8, 4.3, 12.7, 2.2, 2.0, 6.1, 7.0, 0.2, 0.8, 4.0, 2.4, 6.7,
--        A    B    C    D     E    F    G    H    I    J    K    L    M    N 
		 7.5, 1.9, 0.1, 6.0, 6.3, 9.1, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]
--        O    P    Q    R    S    T    U    V    W    X    Y    Z

percent :: Int -> Int -> Float
percent n m = (fromIntegral n / fromIntegral m) * 100

freqs :: String -> [Float]
freqs xs = [percent (count x xs) n | x <- ['a'..'z']]
			where n = lowers xs

count :: Char -> String -> Int
count x xs = length [x' | x' <- xs, x == x']

lowers :: String -> Int
lowers xs = length [x | x <- xs, isLower x]