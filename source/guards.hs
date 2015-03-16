-- Guards são marcados por pipes, seguidos do nome de uma função e seus
-- parâmetros. Geralmente, são alinhados e identados um pouco a direita.

-- bmiTell :: (RealFloat a) => a -> String
-- bmiTell bmi
--     | bmi <= 18.5 = "Voce esta abaixo do peso!"
--     | bmi <= 25.0 = "Supostamente voce esta normal."
--     | bmi <= 30.0 = "Você esta gordo! Faça uma dieta, gorducho!"
--     | otherwise   = "Voce e uma baleia, meus parabens!"

-- Recriando funcao max
max' :: (Integral a) => a -> a -> a
max' a b
    | a > b     = a
    | otherwise = b

-- Exemplo de uso do 'where'
bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= skinny = "Você esta abaixo do peso!"  
    | bmi <= normal = "Supostamente você esta normal. Pfff, aposto que você é feio!"  
    | bmi <= fat    = "Você esta gordo! Faça uma dieta, gorducho!"  
    | otherwise     = "Você é uma baleia, meus parabéns!"  
    where bmi = weight / height ^ 2  
          skinny = 18.5  
          normal = 25.0  
          fat = 30.0

-- Uso de pattern no where
-- initials :: (String s) => s -> s -> s (acusando erro)
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
    where (f:_) = firstname  
          (l:_) = lastname

-- Assim como definimos constantes em blocos where, você também pode definir
--  funções.
calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi w h | (w, h) <- xs]  
    where bmi weight height = weight / height ^ 2