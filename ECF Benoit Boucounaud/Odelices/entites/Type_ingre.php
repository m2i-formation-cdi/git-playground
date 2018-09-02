<?php

abstract class Type_ingre{
    
    private $type_ingre;
    private $labelle;
    
    function __construct($type_ingre, $labelle) {
        $this->type_ingre = $type_ingre;
        $this->labelle = $labelle;
    }

    
    function setType_ingre($type_ingre) {
        $this->type_ingre = $type_ingre;
    }

    function setLabelle($labelle) {
        $this->labelle = $labelle;
    }

        
    function getType_ingre() {
        return $this->type_ingre;
    }

    function getLabelle() {
        return $this->labelle;
    }


}

