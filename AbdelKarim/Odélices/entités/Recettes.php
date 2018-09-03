<?php
/*
 * LE DTO DE LA TABLE Recettes DE LA BD [Odélices]
 */
class Recettes {

	// ATTRIBUTS
	private $ID;
	private $Titre;
	private $Contenus;
	private $Ingrédients;

	// CONSTRUCTEUR
	function __construct($ID = "",$Titre = "",$Contenus = "",$Ingrédients = "") {
		$this->ID = $ID;
		$this->Titre = $Titre;
		$this->Contenus = $Contenus;
		$this->Ingrédients = $Ingrédients;
	}

	// GETTERS AND SETTERS
	public function setID($ID) {
		$this->ID = $ID;
	}
	public function setTitre($Titre) {
		$this->Titre = $Titre;
	}
	public function setContenus($Contenus) {
		$this->Contenus = $Contenus;
	}
	public function setIngrédients($Ingrédients) {
		$this->Ingrédients = $Ingrédients;
	}
	public function getID() {
		return $this->ID;
	}
	public function getTitre() {
		return $this->Titre;
	}
	public function getContenus() {
		return $this->Contenus;
	}
	public function getIngrédients() {
		return $this->Ingrédients;
	}

} // / class Recettes
?>


