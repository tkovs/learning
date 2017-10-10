<?php declare(strict_types=1); ?>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
	    <title>Funções</title>
	</head>
	<body>
		<?php
		/* Tipos de parâmetro e retorno:
		   int float bool string
		   interfaces array callable */
		function triple(int $num = 0): int { // Valor padrão para argumento
			return $num * 3;
		}

		function normal_half(int $num){ // Argumento por valor
			$num /= 2;
		}

		function reference_half(int &$num){ // Argumento por referência
			$num /= 2;
		}

		$money = 50;
		print("Dinheiro após ser declarado: " . $money . "<br />");

		normal_half($money);
		print("Dinheiro após normal_half(): " . $money . "<br />");

		reference_half($money);
		print("Dinheiro após reference_half(): " . $money . "<br />");

		$fun = "reference_half";
		$fun($money);
		print("Dinheiro após fun(): " . $money . "<br />");

		// Função com retorno
		print("Função triple() com 9: " . triple(9) . "<br />");
		?>
	</body>
</html>