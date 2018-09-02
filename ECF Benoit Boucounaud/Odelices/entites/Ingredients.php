<?php

abstract class Ingredients {
    
    private $id_ingre;
    private $labelle;
    private $id_type_ingre;
    private $fiche;
    private $origine;
    private $choix;
    private $conservation;
    private $cuisine;
    private $plus;
    private $image;
    
    function __construct($id_ingre, $labelle, $id_type_ingre, $fiche, $origine, $choix, $conservation, $cuisine, $plus, $image) {
        $this->id_ingre = $id_ingre;
        $this->labelle = $labelle;
        $this->id_type_ingre = $id_type_ingre;
        $this->fiche = $fiche;
        $this->origine = $origine;
        $this->choix = $choix;
        $this->conservation = $conservation;
        $this->cuisine = $cuisine;
        $this->plus = $plus;
        $this->image = $image;
    }

    function setId_ingre($id_ingre) {
        $this->id_ingre = $id_ingre;
    }

    function setLabelle($labelle) {
        $this->labelle = $labelle;
    }

    function setId_type_ingre($id_type_ingre) {
        $this->id_type_ingre = $id_type_ingre;
    }

    function setFiche($fiche) {
        $this->fiche = $fiche;
    }

    function setOrigine($origine) {
        $this->origine = $origine;
    }

    function setChoix($choix) {
        $this->choix = $choix;
    }

    function setConservation($conservation) {
        $this->conservation = $conservation;
    }

    function setCuisine($cuisine) {
        $this->cuisine = $cuisine;
    }

    function setPlus($plus) {
        $this->plus = $plus;
    }

    function setImage($image) {
        $this->image = $image;
    }

        
    function getId_ingre() {
        return $this->id_ingre;
    }

    function getLabelle() {
        return $this->labelle;
    }

    function getId_type_ingre() {
        return $this->id_type_ingre;
    }

    function getFiche() {
        return $this->fiche;
    }

    function getOrigine() {
        return $this->origine;
    }

    function getChoix() {
        return $this->choix;
    }

    function getConservation() {
        return $this->conservation;
    }

    function getCuisine() {
        return $this->cuisine;
    }

    function getPlus() {
        return $this->plus;
    }

    function getImage() {
        return $this->image;
    }


}

