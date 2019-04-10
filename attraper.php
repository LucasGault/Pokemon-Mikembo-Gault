<?php
session_start();

$link = $link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

if (isset($_SESSION['id']))
{

	//requete pour insérer un tuple de la table pokemon
	$insert = 'INSERT INTO pc(Numero,Num_Attaque1,Num_Attaque2,Num_Attaque3,Num_Attaque4,Niveau) VALUES(4,1,2,3,4,5)';
	$reqinsert = mysqli_query($link,$insert);
	echo mysqli_error($link);
	header("Location: profil.php?id=23");
}
else
{
	header("Location: connexion.php");
}

?>