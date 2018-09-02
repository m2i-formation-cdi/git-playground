<?php

abstract class Sous_theme{
    
    private $id_sous_theme;
    private $labelle;
    private $id_theme;
    
    
    function __construct($id_sous_theme, $labelle, $id_theme) {
        $this->id_sous_theme = $id_sous_theme;
        $this->labelle = $labelle;
        $this->id_theme = $id_theme;
    }

    
    
    function setId_sous_theme($id_sous_theme) {
        $this->id_sous_theme = $id_sous_theme;
    }

    function setLabelle($labelle) {
        $this->labelle = $labelle;
    }

    function setId_theme($id_theme) {
        $this->id_theme = $id_theme;
    }

        
    
    function getId_sous_theme() {
        return $this->id_sous_theme;
    }

    function getLabelle() {
        return $this->labelle;
    }

    function getId_theme() {
        return $this->id_theme;
    }


}
