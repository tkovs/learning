-- Ao definir funções, você pode definir códigos específicos para cada padrão.
-- Isso gera um código mais conciso, simples e legível.
lucky :: (Integral a) => a -> String  
lucky 7 = "SETE! BINGO!"  
lucky x = "Desculpe, tente novamente!"

-- "Sem pattern matching, teríamos que escrever uma estrura if then else
-- bem confusa."
sayMe :: (Integral a) => a -> String  
sayMe 1 = "Um!"  
sayMe 2 = "Dois!"  
sayMe 3 = "Três!"  
sayMe 4 = "Quatro!"  
sayMe 5 = "Cinco!"  
sayMe x = "Não está entre 1 e 5"

-- "[...] a ordem é muito importante ao definir patterns e é melhor colocar as mais
-- específicas no início e deixar as gerais para o fim.""
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial x = x * factorial (x - 1)

-- Exemplo de pattern matching que pode falhar
charName :: Char -> String  
charName 'a' = "Albert"  
charName 'b' = "Broseph"  
charName 'c' = "Cecil"

-- ghci> charName 'a'  
-- "Albert"  
-- ghci> charName 'b'  
-- "Broseph"  
-- ghci> charName 'h'  
-- "*** Exception: tut.hs:(53,0)-(55,21): Non-exhaustive patterns in function
-- charName

-- implementação da função head.
head' :: [a] -> a
head' [] = error "Lista vazia fera"
head' (x:_) = x

-- Recriando função length com compressão de lista
-- length' x = sum [1 | _ <- x]
-- Recriando função length (para listas) com pattern matching
length' :: (Integral a) => [a] -> a
length' [] = 0
length' (_:xs) = 1 + length' xs

-- Recriando função sum usando pattern matching
sum' :: (Integral a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- "as pattern"
-- Você cria isso colocando um @ na frente do nome do pattern. Por exemplo, o
-- pattern xs@(x:y:ys). Esse as patterns irá fazer exatamente a mesma coisa 
-- que x:y:ys, mas você consegue obter a lista inteira usando apenas xs, ao 
-- invés repetir tudo novamente digitando x:y:ys no corpo da função novamente.
capital :: String -> String
capital "" = "String vazia, ops!"
capital all@(x:xs) = "A primeira letra de " ++ all ++ " e " ++ [x]
