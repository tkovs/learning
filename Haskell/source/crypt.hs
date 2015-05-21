import ModuleList

div_em_col :: String -> Int -> [String]
div_em_col [] _ = []
div_em_col str tam = (pega_col str tam) : div_em_col (tira_col str tam) tam

pega_col :: String -> Int -> String
pega_col [] _ = []
pega_col (x:xs) tam
    | tam > 0 = x : pega_col xs (tam-1)
    | otherwise = []

tira_col :: String -> Int -> String
tira_col [] _ = []
tira_col all@(x:xs) tam
    | tam > 0 = tira_col xs (tam-1)
    | otherwise = all

lista_pos :: String -> [Int]
lista_pos chave = pega_lista_pos chave (tuples)
  where
  	tuples = zip (quicksort chave) [0..(length chave) - 1]

pega_lista_pos :: [Char] -> [(Char, Int)] -> [Int]
pega_lista_pos [] _ = []
pega_lista_pos (x:xs) l = (pega_pos x l) : pega_lista_pos xs l

pega_pos :: Char -> [(Char, Int)] -> Int
pega_pos c ((a, n) : x)
    | c == a = n
    | otherwise = pega_pos c x

lista :: [String] -> [Int] -> [String]
lista ls [] = []
lista ls (b:y) = (ls !! b) : lista ls y

lista_int :: String -> String -> [String]
lista_int txt ch = lista (div_em_col txt (div (length txt) (length ch))) (lista_pos ch)

pega :: Int -> [String] -> String
pega _ [] = []
pega n (x:xs) = (x !! n) : (pega n xs)

lista_fin :: Int -> Int -> String -> String -> String
lista_fin n k txt ch
    | n < k = pega n prim ++ lista_fin (n+1) k txt ch
    | otherwise = [] 
      where 
      	prim = lista_int txt ch

mens_original :: String -> String -> String
mens_original txt ch = lista_fin 0 (div (length txt) (length ch)) txt ch