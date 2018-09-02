<?php

abstract class recettes_bio{
    
    private $id_bio;
    private $labelle;
    
    function __construct($id_bio, $labelle) {
        $this->id_bio = $id_bio;
        $this->labelle = $labelle;
    }

    function setId_bio($id_bio) {
        $this->id_bio = $id_bio;
    }

    function setLabelle($labelle) {
        $this->labelle = $labelle;
    }

        
    function getId_bio() {
        return $this->id_bio;
    }

    function getLabelle() {
        return $this->labelle;
    }


}

