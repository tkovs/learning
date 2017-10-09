<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
		<title>Arrays</title>
	</head>
	<body>
		<?php
		function show_array($array, $breakline) {
			$breakline ? $end = "<br />" : $end = " ";

			foreach ($array as $element)
				print($element . $end);
		}

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

		function rgb_to_string($color) {
			$red = $color['R'];
			$green = $color['G'];
			$blue = $color['B'];

			return "($red, $green, $blue)";
		}

		function show_rgb_colors($colors) {
			foreach ($colors as $key => $color) {
				print("$key: " . rgb_to_string($color) . "<br />");
			}
		}

		print(show_rgb_colors($colors));
		?>
	</body>
</html>