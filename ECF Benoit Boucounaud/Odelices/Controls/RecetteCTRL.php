<?php

require_once '../daos/Connexion.php';
require_once '../daos/Transaxion.php';
require_once '../entites/Recette.php';
require_once '../daos/RecetteDao.php';

$objetConnexion = new Connexion();
$pdo = $objetConnexion->seConnecter("../conf/bd.ini");
$objetTransaxion = new Transaxion();
$objetTransaxion->initialiser($pdo);


$libelle = filter_input(INPUT_POST, "nom");
$ingredient = filter_input(INPUT_POST, "ingredient");
$preparation = filter_input(INPUT_POST, "preparation");
$mots_clefs = filter_input(INPUT_POST, "mots_clefs");
$image = filter_input(INPUT_POST, "image");
;

$tRecord = array();
$objet = new Recette($libelle, $ingredient, $preparation, $mots_clefs, $image);
$message = RecetteDAO::insert($pdo, $objet);
if ($message == 1) {
    $objetTransaxion->valider($pdo);
}
/*
 * Ne marche pas 
try {
    $show = RecetteDAO::selectAll($pdo);
    //var_dump($show);
} catch (PDOException $e) {
    echo "Echec de l'exécution : " . $e->getMessage();
}
 * 
 */



$tRecord["message"] = $message;
$objetConnexion->seDeconnecter($pdo);
?>

