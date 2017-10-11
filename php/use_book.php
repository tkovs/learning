<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
	    <title>Uso de classes</title>

	    <?php require_once("book_class.php"); ?>
	</head>
	<body>
		<?php
		$livro = new Book("Bíblia", 31.50);

		print($livro->summary());

		$novela = new Novel("Drama matador", 30.00, "tkovs");

		print($novela->summary());
		?>
	</body>
</html>