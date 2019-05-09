<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

include './PHP/security.php';
include './PHP/users.php';
include './PHP/pokemons.php';

verification($_SESSION['id']);

$reqsel = 'SELECT Qtte FROM objets_joueur WHERE id_Objet = 28 AND id_membre = ' . $_SESSION['id'];

$sel = mysqli_query($link, $reqsel);

foreach($sel as $enr)
{
	if($enr['Qtte'] != 0)
	{
		attraper($_SESSION['id'], $link);
		supprimerPokeballs($_SESSION['id'], $link);
	}
}
echo mysqli_error($link);

header("Location: profil.php");


?>
