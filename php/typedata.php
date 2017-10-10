<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
	    <title>Tipos de dados</title>
	</head>
	<body>
		<?php
		$idade = 20; // Integer
		$ano_nascimento = 1997; // Integer

		$pi = 3.14; // Double
		$altura = 1.81; // Double

		/*
			Se um valor é um número, ele é falso somente se for igual a 0.
			Se for string, é falso se a string tiver 0 caracters ou for "0".
			Se for NULL é sempre falso.
			Se for array, é falso se não tiver valores.
			Não usar double como boolean.
		*/
		$vivendo = TRUE;
		$morto = FALSE;

		if ($morto) {
			printf("Ué");
		} else if ($vivendo) {
			printf("Vivo!!<br />");
		}
		$aspas_duplas = "Testando<br />";
		$aspas_simples = 'Testando<br />';

		$nome = "João Vitor";
		$literalmente = 'Meu nome é $nome.<br />';
		print($literalmente);
		$literalmente = "Meu nome é $nome.<br />";
		print($literalmente);

		define("YEAR", 2017);
		print(YEAR . "<br />");
		// YEAR = 4;
		// Parse error: syntax error, unexpected '=' in [...]/typedata.php on line ...
		?>
	</body>
</html>