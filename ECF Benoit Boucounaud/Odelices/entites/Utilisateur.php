<?php

class Utilisateur {
    
    //Attributs
    private $id_user;
    private $email;
    private $pseudo;
    private $mdp;
    private $newletter;
    private $bons_plans;
    
    //Constructeur
    function __construct($id_user, $email, $pseudo, $mdp, $newletter, $bons_plans) {
        $this->id_user = $id_user;
        $this->email = $email;
        $this->pseudo = $pseudo;
        $this->mdp = $mdp;
        $this->newletter = $newletter;
        $this->bons_plans = $bons_plans;
    }

    
    //Geters and Seters
    function getId_user() {
        return $this->id_user;
    }

    function getEmail() {
        return $this->email;
    }

    function getPseudo() {
        return $this->pseudo;
    }

    function getMdp() {
        return $this->mdp;
    }

    function getNewletter() {
        return $this->newletter;
    }

    function getBons_plans() {
        return $this->bons_plans;
    }

    function setId_user($id_user) {
        $this->id_user = $id_user;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setPseudo($pseudo) {
        $this->pseudo = $pseudo;
    }

    function setMdp($mdp) {
        $this->mdp = $mdp;
    }

    function setNewletter($newletter) {
        $this->newletter = $newletter;
    }

    function setBons_plans($bons_plans) {
        $this->bons_plans = $bons_plans;
    }


}

