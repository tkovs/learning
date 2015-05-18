-- 01
-- Escreva um programa que imprima os numeros entre 0 e 100
questao1 = [1..100]

-- 02
-- Escreva um programa que imprima os numeros pares entre 0 e 100
questao2 = [0,2..100]

-- 03
-- Escreva um programa que leia um numero e determine se ele e par ou impar
questao3 :: (Integral i) => i -> String
questao3 i
    | mod i 2 == 0 = "Par"
    | otherwise    = "Impar"

-- 04
-- Escreva um programa que leia os 03 lados de um triangulo e determine se ele e:
-- equilatero, isosceles ou escaleno. (Equilatero: tres lados iguais, 
-- Isosceles: dois lados iguais)
questao4 :: (RealFloat i) => i -> i -> i -> String
questao4 x y z
    | equilatero = "Equilatero"
    | escaleno   = "Escaleno"
    | otherwise  = "Isosceles"
    where equilatero = x == y && y == z
          escaleno   = x /= y && y /= z && z /= x

-- 05
-- Escreva um programa que leia a altura de 05 pessoas e calcule a media
sum' :: (RealFloat a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

length' :: (RealFloat a) => [a] -> a
length' [] = 0
length' x  = sum [1 | _ <- x]

questao5 :: [Float] -> Float
questao5 x = sum' x / length' x

-- 06
-- Escreva um programa que leia 05 numeros e determine qual o maior numero
-- digitado

-- 07
-- Escreva um programa que leia 30 numeros e determine qual o menor numero

-- 08
-- Escreva um programa que calcule a idade do usuario. Para isso, o programa
-- deve ler o ano de nascimento, o ano atual e depois mostrar a idade.
-- Obs. O ano deve ser informado no formato AAAA (ex.: 1980)
questao8 :: (Integral a) => a -> a -> a
questao8 x y
	| x > y     = error "Idade negativa, forneça os valores corretos."
	| otherwise = y - x

-- 09
-- Escreva um programa que leia um conjunto de idades e calcule a media.
-- O programa deve ler as idades ate o usuario digitar -1.