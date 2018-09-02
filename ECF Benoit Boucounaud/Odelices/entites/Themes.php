<?php

abstract class Themes {
    private $id_theme;
    private $libelle;
    
    
    function __construct($id_theme, $libelle) {
        $this->id_theme = $id_theme;
        $this->libelle = $libelle;
    }

    function setId_theme($id_theme) {
        $this->id_theme = $id_theme;
    }

    function setLibelle($libelle) {
        $this->libelle = $libelle;
    }

        
    function getId_theme() {
        return $this->id_theme;
    }

    function getLibelle() {
        return $this->libelle;
    }


    
}
