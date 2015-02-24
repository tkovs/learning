-- Sistema de tipos de Haskell
-- obs. Importante estudar a fundo.

-- É possível verificar o tipo de uma expressão 
-- digitando :t antes dela.
-- Exemplo:
-- Prelude> :t True
-- True :: Bool
-- Prelude> :t 3.4
-- 3.4 :: Fractional a => a
-- Prelude> :t 666
-- 666 :: Num a => a
-- Prelude> :t ('s', 3, True)
-- ('s', 3, True) :: Num t => (Char, t, Bool)
-- Prelude> :t [1, 2, 3]
-- [1, 2, 3] :: Num t => [t]

-- Expressões têm tipo
-- Funções também têm tipo
basic :: [Int] -> Int
basic x = sum [x | x <- x]

-------------------------------
-- Tipos gerais

-- Int - Inteiro. Usado para números inteiros.
-- Geralmente computadores 32bit têm um Int máximo de 
-- 2147483647 e um mínimo de -2147483648

-- Integer - Mesma coisa que Int, porém....
-- Esse tipo consegue armazenar um valor bem maior como
-- por exemplo o fatorial de 50: 
-- 30414093201713378043612608166064768844377641568960512000000000000
-- obs. O Int é mais eficiente.

-- Float - Uma fração. Um número real ponto flutuante de 
-- precisão simples.
-- Exemplo:
-- 25.132742 

-- Double - Fração como float, mas com precisão bem maior.
-- Exemplo:
-- 25.132741228718345

-- Bool só pode conter dois valores: True ou False.
-- Exemplo:
-- True
-- Geniusssssssssssssss

-- Char - Caractere. É delimitado por aspas simples.
-- Exemplo:
-- 'a'

-- String - Lista de caracteres. É delimitada por aspas duplas.
-- Exemplo:
-- "Vitor Rodrigues"

-- ghci> :t head
-- head :: [a] -> a
-- Qual o tipo de a? Um tipo variável. Isso é uma função genérica.
-- É como o tipo genérico de outras linguagens. Desse modo eu posso
-- escrever uma função capaz de funcionar com diversos tipos que
-- passem pelo mesmo procedimento.