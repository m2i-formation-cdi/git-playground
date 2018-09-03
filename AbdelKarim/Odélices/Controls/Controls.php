<?php

/*
 * InscriptionCTRL.php
 */

require_once '../dao/Connexion.php';
require_once '../dao/Transaxion.php';
require_once '../entités/Recettes.php';
require_once '../dao/RecettesDAO.php';

$objetConnexion = new Connexion();
$pdo = $objetConnexion->seConnecter("../conf/bd.ini");
$liste = array();
try {
    $tObjets = RecettesDAO::selectAll($pdo);

    for ($i = 0; $i < count($tObjets); $i++) {
        $tRecord = array();
        $tRecord["Titre"] = $tObjets[$i]->getTtitre();
        $tRecord["Contenus"] = $tObjets[$i]->getContenus();
        $liste[] = $tRecord;
    }
} catch (Exception $exc) {
    //echo $exc->getTraceAsString();
    $tRecord = array();
    $tRecord["Titre"] = "-1";
    $tRecord["Contenus"] = $exc->getTraceAsString();
    $liste[] = $tRecord;
}

$objetConnexion->seDeconnecter($pdo);

$json = json_encode($liste);

echo $json;

?>