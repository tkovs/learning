<?php session_start(); ?>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<title>Base</title>
	</head>
	<body>
		<?php 
		$destroy = FALSE;
		$_SESSION["username"] = "tkovs";

		if ($destroy) {
			session_unset();
			session_destroy();
		}
		?>
	</body>
</html>