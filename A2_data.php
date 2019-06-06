<?php

$salles = array("Isabelle"=>"B7-104","Thomas"=>"C118", "Lucia"=>"E315");
$noms = array("Isabelle"=>"Le-Glaz","Thomas"=>"Bourdeaud'huy", "Lucia"=>"Veraldi");

if ((isset($_GET["cle"]) && isset($noms[$_GET["cle"]])))
{
	echo $noms[$_GET["cle"]];
	die("");
}

if ((isset($_POST["cle"]) && isset($salles[$_POST["cle"]]))) 
{
	echo $salles[$_POST["cle"]];
	die("");
}

echo "Aucun Resultat";

?>
