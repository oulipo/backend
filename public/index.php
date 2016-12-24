<?php
    include "lib/connexion.php";
    $query = $dbh->prepare('SELECT * FROM produits');
    $query->execute();
    $produits = $query->fetchAll();
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>affichage</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<h1>Affichage dynamique de données provenant d'une table produits dans une base de données</h1>
    <?php 
    if(!empty($produits)) {
        echo "<ul>";
        foreach($produits as $produit):
            echo "<li>$produit[nom]</li>";
            echo "<li>$produit[marque]</li>";
            echo "<li>$produit[prix]</li>";
        endforeach;
        echo "</ul>";
    } else {
        echo "<h4>Vide...</h4>";
    }
    ?>
    <form method="POST" action="ajout.php">
        <input type="text" name="nom" placeholder="Nom">
        <input type="text" name="marque" placeholder="Marque">
        <input type="text" name="prix" placeholder="Prix">
        <input type="submit" name="ajouter" value="Ajouter">
    </form>
    
</body>
</html>