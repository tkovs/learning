<?php 
class Book {
	var $price;
	var $title;

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
}

class Novel extends Book {
	var $publisher;

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

	function summary() {
		$summary = "Title: $this->title<br />";
		$summary .= "Price: R$ $this->price<br />";
		$summary .= "Publisher: $this->publisher<br />";

		return $summary;
	}
}
?>