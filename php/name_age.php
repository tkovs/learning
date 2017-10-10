<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>Formulário</title>
	</head>
	<body>
		<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
			<fieldset>
				<legend>Dados pessoais</legend>
				Nome:<br />
				<input type="text" name="nome" /><br>
				Idade:<br />
				<input type="text" name="idade" /><br>

				<input type="submit">
			</fieldset>
		</form>

		<?php
		if  (isset($_POST["nome"])) {
			if (preg_match("/[^A-Za-z ]/", $_POST["nome"])) {
				die("Nome inválido, deveria usar apenas caracteres.");
			}

			if ($_POST["idade"] < 0) {
				die("Idade não pode ser inferior a 0");
			}

			setcookie("nome", $_POST["nome"], time()+60);
			setcookie("idade", $_POST["idade"], time()+60);
			// Na primeira vez que definir o cookie, o if abaixo não funcionará.
			// Portanto, repeti o código abaixo.
			print("Bem vindo " . $_POST['nome'] . "<br />");
			print("Você tem " . $_POST['idade'] . " anos.");
		} else if (isset($_COOKIE["nome"])) {
			print("Bem vindo " . $_COOKIE['nome'] . "<br />");
			print("Você tem " . $_COOKIE['idade'] . " anos.");
		}

		exit();
		?>
	</body>
</html>