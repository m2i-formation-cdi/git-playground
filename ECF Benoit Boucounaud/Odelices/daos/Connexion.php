<?php


class Connexion {

    public function seConnecter($psCheminParametresConnexion) {

        $tProprietes = parse_ini_file($psCheminParametresConnexion);

        $lsProtocole = $tProprietes["protocole"];
        $lsServeur = $tProprietes["serveur"];
        $lsPort = $tProprietes["port"];
        $lsUT = $tProprietes["ut"];
        $lsMDP = $tProprietes["mdp"];
        $lsBD = $tProprietes["bd"];

        $lcnx = null;
        try {
            $lcnx = new PDO("$lsProtocole:host=$lsServeur;port=$lsPort;dbname=$lsBD;", $lsUT, $lsMDP);
            $lcnx->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $lcnx->setAttribute(PDO::ATTR_AUTOCOMMIT, FALSE);
            $lcnx->exec("SET NAMES 'UTF8'");
        } catch (PDOException $ex) {
            $lcnx = null;
            echo "<br>" . $ex->getMessage();
        }
        return $lcnx;
    }


    public function seDeconnecter(PDO &$pcnx) {
        $pcnx = null;
    }

}
