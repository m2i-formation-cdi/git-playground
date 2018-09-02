<?php

abstract  class Plats{
    
    private $id_plat;
    private $labelle;
    private $id_type_plat;
    
    
    function __construct($id_plat, $labelle, $id_type_plat) {
        $this->id_plat = $id_plat;
        $this->labelle = $labelle;
        $this->id_type_plat = $id_type_plat;
    }

    function setId_plat($id_plat) {
        $this->id_plat = $id_plat;
    }

    function setLabelle($labelle) {
        $this->labelle = $labelle;
    }

    function setId_type_plat($id_type_plat) {
        $this->id_type_plat = $id_type_plat;
    }

        
    function getId_plat() {
        return $this->id_plat;
    }

    function getLabelle() {
        return $this->labelle;
    }

    function getId_type_plat() {
        return $this->id_type_plat;
    }


    
}
