<?php

class Commentaire {
    
    //Attributs
    private $id_comm;
    private $texte;
    private $note;
    private $auteur;
    
    //Constructeur
    function __construct($id_comm, $texte, $note, $auteur) {
        $this->id_comm = $id_comm;
        $this->texte = $texte;
        $this->note = $note;
        $this->auteur = $auteur;
    }

    
    //Geters and seters
    function getId_comm() {
        return $this->id_comm;
    }

    function getTexte() {
        return $this->texte;
    }

    function getNote() {
        return $this->note;
    }

    function getAuteur() {
        return $this->auteur;
    }

    function setId_comm($id_comm) {
        $this->id_comm = $id_comm;
    }

    function setTexte($texte) {
        $this->texte = $texte;
    }

    function setNote($note) {
        $this->note = $note;
    }

    function setAuteur($auteur) {
        $this->auteur = $auteur;
    }


}

