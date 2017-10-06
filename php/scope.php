<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
	    <title>Hello, world!</title>
	</head>
	<body>
		<?php
		$numero = 10;

		function variavel_local() {
			$numero = 5;
			print("Valor de número dentro de variavel_local(): $numero<br />");
		}

		function variavel_global() {
			GLOBAL $numero;
			$numero = 5;
			print("Valor de número dentro de variavel_global(): $numero<br />");
		}

		function variavel_estatica() {
			STATIC $i = 0;
			$i = $i + 1;
			print("Variável estática: " . $i . "<br />");
		}

		print("Valor de número no escopo global: $numero<br />");
		variavel_local();
		print("Valor de número no escopo global: $numero<br />");
		variavel_global();
		print("Valor de número no escopo global: $numero<br />");

		variavel_estatica();
		variavel_estatica();
		variavel_estatica();
		variavel_estatica();
		?>
	</body>
</html>