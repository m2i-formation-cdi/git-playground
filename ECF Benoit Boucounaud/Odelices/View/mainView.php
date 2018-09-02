<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ajouter une recette</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

    </head>
    <body>

        <?php
        
        require_once '../Controls/RecetteCTRL.php';
        
        //Pour remplacer le selectAll dans le DAO 
        
        $lsMessage = "";
        $lsTableHTML = "";

        try {
            // --- Tentative de connexion
            $lcnx = new PDO("mysql:host=localhost;port=3306;dbname=Odelicies;", "root", "");
            // --- Attributs de connexion : erreur --> exception
            $lcnx->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            // --- Communication UTF-8 entre BD et script
            $lcnx->exec("SET NAMES 'UTF8'");

            // On prend le nom de la table ecrit, lrs est un curseur 
            $lrs = $lcnx->query("SELECT * FROM recettes");
            $lrs->setFetchMode(PDO::FETCH_NUM);

            // On boucle sur les lignes de la table choisie
            foreach ($lrs as $lrec) { // foreach (ligne as colonne)
                $lsTableHTML .= "<tr>";
                // On boucle sur les colonnes
                $count = count($lrec); // Ici on considere que c est un taleau donc on peux utiliser count
                for ($i = 0; $i < $count; $i++) {
                    $lsTableHTML .= "<td>$lrec[$i]</td>";  // Ici on boucle les colonnes
                }
                $lsTableHTML .= "</tr>";
            }

            $lrs->closeCursor();
        } /// try
// --- Recuperation d'une exception
        catch (PDOException $e) {
            $lsMessage = "Echec de l'exécution : " . $e->getMessage();
        } /// catch
// --- Deconnexion
        $lcnx = null;
        ?>

        <!--Ajout-->
        <fieldset>

            <legend>Ajout d'une recette</legend>
            <form action="" method="POST">
                <p>
                    <label>Nom:</label>
                    <input type="text" class="obligatoire" name="nom" id="nom" value=""/>
                    <label class="texteRouge">*</label>
                </p>
                <p>
                    <label>Ingredients:</label>
                    <textarea name="ingredient" id="ingredient" rows="3" cols="50">
                    </textarea>
                </p>
                <p>
                    <label>Preparation:</label>
                    <textarea name="preparation" id="preparation" rows="3" cols="50">
                    </textarea>
                </p>
                <p>
                    <label>Mots clefs:</label>
                    <input type="text" name="mots_clefs" id="mots_clefs" value=""/>
                </p>
                <p>
                    <label>Image:</label>
                    <input type="text" name="image" id="image" value=""/>
                </p>

                <p>
                    <label>Type de plat:</label>
                    <select name="plat" id="plat">

                    </select>
                </p>

                <p>
                    <label>Thème:</label>
                    <select name="theme" id="theme">

                    </select>
                </p>

                <p>
                    <label>Sorte de recette:</label>
                    <input type="checkbox" name="tech_base" id="tech_base"/>
                    <label>Technique de base</label>
                    <input type="checkbox" name="classique" id="classique"/>
                    <label>Recette classique</label>
                    <input type="checkbox" name="bio" id="bio"/>
                    <label>Recette bio</label>
                </p>



                <p>
                    <button type="submit" name="btValider" id="btValider" value="Valider">
                        Valider
                    </button>
                </p>

            </form>

        </fieldset>

        <!--Afiichage des tables-->
        <fieldset>
            <legend>Toute les recettes</legend>

            <table border="1">
                <thead>
                <th>ID</th>
                <th>Nom</th>
                <th>Ingredients</th>
                <th>Préparation</th>
                <th>Mots_clefs</th>
                <th>Auteur</th>
                <th>Commentaire</th>
                <th>Image</th>
                </thead>
                <tbody>
                    <?php
                    echo $lsTableHTML;
                    ?>
                </tbody>

            </table>

            <label>
                <?php
                echo $lsMessage;
                ?>
            </label>
        </fieldset>

        
        
    </body>
</html>
