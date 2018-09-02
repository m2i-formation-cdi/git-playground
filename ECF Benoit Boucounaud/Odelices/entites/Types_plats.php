<?php

abstract class Type_plat{
    
    private $id_type_plat;
    private $labelle;
    
    function __construct($id_type_plat, $labelle) {
        $this->id_type_plat = $id_type_plat;
        $this->labelle = $labelle;
    }

    function setId_type_plat($id_type_plat) {
        $this->id_type_plat = $id_type_plat;
    }

    function setLabelle($labelle) {
        $this->labelle = $labelle;
    }

        
    function getId_type_plat() {
        return $this->id_type_plat;
    }

    function getLabelle() {
        return $this->labelle;
    }


}
