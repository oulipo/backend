<?php
    include "lib/connexion.php";
    
    // sans contrôle...
    $query = $dbh->prepare('INSERT INTO produits(nom, marque, prix) VALUES (:nom, :marque, :prix)');
    $query->bindValue('nom', $_POST['nom'], PDO::PARAM_STR);
    $query->bindValue('marque', $_POST['marque'], PDO::PARAM_STR);
    $query->bindValue('prix', $_POST['prix'], PDO::PARAM_STR);
    $query->execute();
    header("Location: index.php");
?>