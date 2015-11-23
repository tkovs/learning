nomes = ["Joao", "Lucas", "Bruna", "Leonardo", "Luana", "Priscila", "Jose"]
telefones = ["981213125", "981468833", "981235455", "996452560", "996487781", "996541847"]

-- INSERT INTO cliente (nome, telefone) VALUES (nomes, telefones)

str1 = "INSERT INTO cliente (nome, telefone) VALUES ("
str2 = ", "
str3 = ");\n"

generate :: [String] -> [String] -> [String]
generate (n:ns) (t:ts) = [str1 ++ n ++ str2 ++ t ++ str3] ++ generate ns ts
generate [] _ = []
generate _ [] = []

main = do
	mapM_ putStr $ generate nomes telefones