<?php

/*
  UtilisateursDAO.php
 */
/*
  LE DAO de la table [utilisateurs] de la BD [cours]
 */
require_once '../entites/Recette.php';

class RecetteDAO {
    /*
     * Functin à revoir, ne marche pas
     * 
    public static function selectAll(PDO $pdo) {
        $liste = array();
        try {
            $sql = 'SELECT * FROM recette';
            $lrs = $pdo->query($sql);
            $lrs->setFetchMode(PDO::FETCH_ASSOC);
            while ($enr = $lrs->fetch()) {
                $objet = new Recette($enr['libelle'], $enr['ingredient'], $enr['preparation'], $enr['mots_clefs'], $enr['image']);
                $liste[] = $objet;
            }
        } catch (PDOException $e) {
            $objet = null;
            $liste[] = $objet;
        }
        return $liste;
    }
    */

    public static function insert(PDO $pdo, $objet) {
        $liAffectes = 0;
        try {
            $sql = "INSERT INTO recettes(libelle, ingredient, preparation, mots_clefs, image) VALUES(?,?,?,?,?)";
            $lcmd = $pdo->prepare($sql);
            $lcmd->bindValue(1, $objet->getLibelle());
            $lcmd->bindValue(2, $objet->getIngredient());
            $lcmd->bindValue(3, $objet->getPreparation());
            $lcmd->bindValue(4, $objet->getMots_clefs());
            $lcmd->bindValue(5, $objet->getImage());

            $lcmd->execute();
            $liAffectes = $lcmd->rowcount();
        } catch (PDOException $e) {
            $liAffectes = $e->getMessage();
        }
        return $liAffectes;
    }


}

?>
