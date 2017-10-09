<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>Formulário</title>
	</head>
	<body>
		<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
			Nome:<br />
			<input type="text" name="nome" /><br>
			Idade:<br />
			<input type="text" name="idade" /><br>

			<input type="submit">
		</form>

		<?php
		if  (isset($_POST["nome"])) {
			if (preg_match("/[^A-Za-z ]/", $_POST["nome"])) {
				die("Nome inválido, deveria usar apenas caracteres.");
			}

			print("Bem vindo " . $_POST['nome'] . "<br />");
			print("Você tem " . $_POST['idade'] . " anos.");

			exit();
		}
		?>
	</body>
</html>