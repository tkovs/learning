<?php
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

function show_array($array, $breakline) {
	$breakline ? $end = "<br />" : $end = " ";

	foreach ($array as $element)
		print($element . $end);
}
?>