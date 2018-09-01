



<?php
try {
    $perPage = 5;
    $currentPage = 1;

//controle de l'url
    if (isset($_GET['p']) && $_GET['p'] > 0 && $_GET['p'] <= 7) {
        $currentPage = $_GET['p'];
    } else {
        $currentPage = 1;
    }

    // Connexion
    $lcnx = new PDO("mysql:host=localhost;port=3306;dbname=ecf3;", "root", "");
    $lcnx->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $lcnx->exec("SET NAMES 'UTF8'");

    // Préparation et exécution du SELECT SQL
    $lsSelect = "SELECT id_recettes, titre FROM recettes ORDER BY titre ASC LIMIT " . (($currentPage - 1) * $perPage) . ",$perPage";
    $lrs = $lcnx->query($lsSelect);

    $selectContenu = "";
    // On boucle sur les lignes en récupérant le contenu des colonnes 1 et 2
    foreach ($lrs as $enr) {
        // Récupération des valeurs par concaténation et interpolation
        $selectContenu .= '<h3><a href="fake_link">' . $enr[1] . '</a></h3><br><hr>';
    }

    $lsSelect2 = "SELECT COUNT(id_recettes) as nbRec FROM recettes";
    $lrs2 = $lcnx->query($lsSelect2);
    $selectContenu2 = "";
    foreach ($lrs2 as $enr) {
        $selectContenu2 = $enr['nbRec'];
    }

    $nbPage = ceil($selectContenu2 / $perPage); //on arrondi à la page sup si page incomplète
}
// Gestion des erreurs
catch (PDOException $e) {
    $lsContenu = "Echec de l'exécution : " . $e->getMessage();
}
?>    



<html>
    <body>

        <h1>Toutes nos Recettes</h1> <br>

<?php echo $selectContenu; ?> <!-- on affiche la liste des recettes -->

<?php
for ($i = 1; $i <= $nbPage; $i++) { //on affiche la pagination
    if ($i == $currentPage) { //pour retirer le lien de la page courrante
        echo " $i /";
    } else {
        echo " <a href=\"index.php?p=$i\">$i</a> /";
    }
}
?> 

    </body>
</html>

