nome = ["Antonio",
		"Arthur",
		"Bruna",
		"Daniela",
		"Debora",
		"Denys",
		"Gabriel",
		"Gabriela",
		"Gustavo",
		"Jeferson",
		"Joao",
		"Jose",
		"Layse",
		"Leonardo",
		"Luana",
		"Lucas",
		"Lucia",
		"Luis",
		"Luna",
		"Pedro",
		"Poliana",
		"Priscila",
		"Sabrina",
		"Samoel",
		"Serafim",
		"Thalia",
		"Waldir"]

telefone = ["981213125",
			"981468833",
			"981235455",
			"996452560",
			"996487781",
			"996541847",
			"981824890",
			"998389283",
			"999573534",
			"996445780",
			"981567553",
			"998345323",
			"999677735",
			"996554886",
			"981776434",
			"998345213",
			"999035671",
			"996495676",
			"981567767",
			"998712334",
			"999267282",
			"996999954",
			"981144234",
			"998245523",
			"999455425",
			"996234772",
			"981123355",
			"998135674",
			"999134575",
			"981345511",
			"998234266",
			"999388234",
			"996174893"]

cidade = ["Arapiraca",
		  "Delmiro Golveia",
		  "Lagoa da Canoa",
		  "Arapiraca",
		  "Maceio",
		  "Sao Sebastiao",
		  "Delmiro Golveia",
		  "Arapiraca",
		  "Palmeira dos Indios",
		  "Arapiraca",
		  "Sao Sebastiao",
		  "Limoneiro de Anadia",
		  "Palmeira dos Indios",
		  "Atalaia",
		  "Maceio",
		  "Arapiraca",
		  "Campo Alegre",
		  "Atalaia",
		  "Maceio",
		  "Campo Alegre",
		  "Arapiraca",
		  "Sao Sebastiao",
		  "Teotonio Vilela",
		  "Campo Alegre",
		  "Delmiro Golveia",
		  "Atalaia",
		  "Sao Sebastiao"]

-- INSERT INTO cliente (nome, cidade, telefone) VALUES (nomes, cidades, telefones)

str1 = "INSERT INTO cliente (nome, cidade, telefone) VALUES ("
str2 = ", "
str3 = ");\n"

generate :: Int -> [String] -> [String] -> [String] -> [String]
generate 0 _ _ _ = []
generate count (n:ns) (c:cs) (t:ts) = [insert] ++ generate (count-1) ns cs ts
	where insert = str1 ++ n ++ str2 ++ c ++ str2 ++ t ++ str3
generate _ [] _ _ = []
generate _ _ [] _ = []
generate _ _ _ [] = []

main = do
	mapM_ putStr $ generate 10 nome cidade telefone