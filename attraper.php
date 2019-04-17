<?php
session_start();

$link = $link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

if (isset($_SESSION['id']))
{

	$pokemon = rand(1,7);
	$niveau = rand(5,10);
	//requete pour insérer un tuple de la table pokemon
	$insert = 'INSERT INTO pc(id_membre,Numero,Num_Attaque1,Num_Attaque2,Num_Attaque3,Num_Attaque4,Niveau) VALUES('.$_SESSION['id'].','.$pokemon.',1,2,3,4,'.$niveau.")";
	$reqinsert = mysqli_query($link,$insert);
	echo mysqli_error($link);
	header("Location: profil.php");
}
else
{
	header("Location: connexion.php");
}

?>
