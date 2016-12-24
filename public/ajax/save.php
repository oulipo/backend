<?php

include "../lib/connexion.php";
if(isset($_POST['nom'])) {
    $query = $dbh->prepare("INSERT INTO produits(nom, marque, prix) VALUES (:nom, :marque, :prix)");
    $query->bindValue("nom", $_POST["nom"]);
    $query->bindValue("marque", $_POST["marque"]);
    $query->bindValue("prix", $_POST["prix"]);
    $query->execute();

    $query = $dbh->prepare("SELECT * FROM produits");
    $query->execute();
    $liste = $query->fetchAll();

    echo json_encode($liste);
}
