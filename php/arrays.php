<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
		<title>Arrays</title>

		<?php require("utils.php"); ?>
	</head>
	<body>
		<?php
		$numbers = array(1, 2, 3, 4, 5);
		show_array($numbers, FALSE);
		print ("<br />");

		$names[0] = "João";
		$names[1] = "Maria";
		$names[2] = "Lucas";
		$names[3] = "Sabrina";

		show_array($names, TRUE);

		$nomes = array('tkovs' => 10, 'maria' => 8, 'lucas' => 9, 'sabrina' => 6);
		show_array($nomes, TRUE);

		$colors = array( 
			'blue' => array (
				'R' => 0,
				'G' => 0,	
				'B' => 255
			),
			
			'red' => array (
				'R' => 255,
				'G' => 0,	
				'B' => 0
			),
			
			'green' => array (
				'R' => 0,
				'G' => 255,	
				'B' => 0
			)
		);

		print(show_rgb_colors($colors));
		?>
	</body>
</html>