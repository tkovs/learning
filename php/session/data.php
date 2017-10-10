<?php session_start(); ?>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>Base</title>
	</head>
	<body>
		<?php 
		echo $_SESSION["username"];
		?>
	</body>
</html>