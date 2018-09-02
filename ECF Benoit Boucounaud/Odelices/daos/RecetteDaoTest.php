<?php

/*
 * RecetteDAOTest.php
 */

require_once 'Connexion.php';
require_once 'Transaxion.php';
require_once '../entites/Recette.php';
require_once 'RecetteDao.php';

$objetConnexion = new Connexion();
$objetTransaxion = new Transaxion();

$lcnx = $objetConnexion->seConnecter("../conf/bd.ini");
$objetTransaxion->initialiser($lcnx);

$Recette = new Recette("Test2", "Test2","Test2", "Test2", "test2");

$dao = new RecetteDAO($lcnx);

/*
 * INSERT
 */
$liAffecte = $dao->insert($lcnx , $Recette);
echo "<br>Insert ? $liAffecte";
if ($liAffecte == 1) {
    $lbOK = $objetTransaxion->valider($lcnx);
    echo "<br>Commit ? $lbOK";
} else {
    $lbOK = $objetTransaxion->annuler($lcnx);
    echo "<br>Rollback ? $lbOK";
}

/*
 * SELECT ALL
  Probleme sur le DAO à modifier
 * 
$liSelect = $dao->selectAll($lcnx);
var_dump ($liSelect);
 * 
 */

?>
