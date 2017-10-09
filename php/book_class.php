<?php 
class Book {
	// Classes herdarão esses dados
	protected $price;
	protected $title;

	function __construct($title, $price) {
		$this->setTitle($title);
		$this->setPrice($price);
	}

	function setTitle($title) {
		$this->title = $title;
	}

	function getTitle() {
		return $this->title;
	}
	
	function setPrice($price) {
		$this->price = $price;
	}

	function getPrice() {
		return $this->price;
	}

	function summary() {
		$summary = "Title: $this->title<br />";
		$summary .= "Price: R$ $this->price<br />";

		return $summary;
	}

	// Apenas nessa classe
	private function whoami() {
		print("I AM A BOOK");
	}
}

class Novel extends Book {
	private $publisher;

	function __construct($title, $price, $publisher) {
		$this->setTitle($title);
		$this->setPrice($price);
		$this->setPublisher($publisher);
	}

	function setPublisher($publisher) {
		$this->publisher = $publisher;
	}

	function getPublisher() {
		return $this->publisher;
	}

	function setPrice($price) {
		$this->price = $price * 1.50;
	}

	// Function overriding
	function summary() {
		$summary = "Title: $this->title<br />";
		$summary .= "Price: R$ $this->price<br />";
		$summary .= "Publisher: $this->publisher<br />";

		return $summary;
	}
}
?>