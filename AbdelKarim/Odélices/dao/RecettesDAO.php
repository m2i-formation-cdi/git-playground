<?php

/*
  UtilisateursDAO.php
 */
/*
  LE DAO de la table [utilisateurs] de la BD [cours]
 */
require_once '../entités/Recettes.php';

class RecettesDAO {

    public static function selectAll(PDO $pdo) {
        $liste = array();
        try {
            $sql = 'SELECT * FROM odélices';
            $lrs = $pdo->query($sql);
            $lrs->setFetchMode(PDO::FETCH_ASSOC);
            while ($enr = $lrs->fetch()) {
                $objet = new Recettes($enr['ID'], $enr['Titre'], $enr['Contenus'], $enr['Ingrédients']);
                $liste[] = $objet;
            }
        } catch (PDOException $e) {
            $objet = null;
            $liste[] = $objet;
        }
        return $liste;
    }
}

?>

