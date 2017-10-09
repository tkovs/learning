<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
	    <title>Funções</title>
	</head>
	<body>
		<?php
		function triple($num = 10) { # Valor padrão para argumento
			$num *= 3;
		}

		function half(&$num) { # Argumento por referência
			$num /= 2;
		}

		$money = 50;
		print("Dinheiro após ser declarado: " . $money . "<br />");
		triple($money);
		print("Dinheiro após triple(): " . $money . "<br />");
		half($money);
		print("Dinheiro após half(): " . $money . "<br />");
		$fun = "half";
		$fun($money);
		print("Dinheiro após fun(): " . $money . "<br />");
		?>
	</body>
</html>