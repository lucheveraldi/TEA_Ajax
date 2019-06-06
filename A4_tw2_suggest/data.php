<?php
if (isset($_GET["debutNom"])) 
{
	$cherche = $_GET["debutNom"]; 
	// On va ouvrir un fichier et afficher les lignes
	// où le prénom ou le nom contient ce texte

	$tabLignes = file("tw2.txt");
	foreach ($tabLignes as $ligne)
	{
		// EXO1 : effectuer une recherche sur nom ou prénom 
		if (preg_match("/^.*:(" . $cherche . ".*)$/i",$ligne,$tabResultats))
		{
			echo $tabResultats[0] . "<br>";
			// EXO2 afficher nom ET prénom
		}
	}

	die("");
}

?>
