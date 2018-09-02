<?php

class Recette {
    
    //Attributs
    private $libelle;
    private $ingredient;
    private $preparation;
    private $mots_clefs;
    private $image;
    
    //Instructeur
    function __construct($libelle, $ingredient, $preparation, $mots_clefs, $image) {
        $this->libelle = $libelle;
        $this->ingredient = $ingredient;
        $this->preparation = $preparation;
        $this->mots_clefs = $mots_clefs;
        $this->image = $image;
    }

    //Geters and seters

    function getLibelle() {
        return $this->libelle;
    }

    function getIngredient() {
        return $this->ingredient;
    }

    function getPreparation() {
        return $this->preparation;
    }

    function getMots_clefs() {
        return $this->mots_clefs;
    }

    function getImage() {
        return $this->image;
    }


    function setLibelle($libelle) {
        $this->libelle = $libelle;
    }

    function setIngredient($ingredient) {
        $this->ingredient = $ingredient;
    }

    function setPreparation($preparation) {
        $this->preparation = $preparation;
    }

    function setMots_clefs($mots_clefs) {
        $this->mots_clefs = $mots_clefs;
    }

    function setImage($image) {
        $this->image = $image;
    }


    
}
