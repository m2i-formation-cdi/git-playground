<?php

 abstract class Recettes_classiques {
    
    
    private $id_classique;
    private $libelle;
    
    function __construct($id_classique, $libelle) {
        $this->id_classique = $id_classique;
        $this->libelle = $libelle;
    }

    
    function setId_classique($id_classique) {
        $this->id_classique = $id_classique;
    }

    function setLibelle($libelle) {
        $this->libelle = $libelle;
    }

        
    function getId_classique() {
        return $this->id_classique;
    }

    function getLibelle() {
        return $this->libelle;
    }


}

