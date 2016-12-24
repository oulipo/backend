<?php

include "../lib/connexion.php";

$query = $dbh->prepare("SELECT * FROM produits ORDER BY id DESC");
$query->execute();
$liste = $query->fetchAll();

echo json_encode($liste);