<?php
session_start();

include './PHP/security.php';
include './PHP/users.php';
include './PHP/pokemons.php';

$link = linkBdd();

verification($_SESSION['id']);
if (isset($_GET['num_Objet'])){
	$capturer = 0;
	$reqsel = 'SELECT Qtte FROM objets_joueur WHERE id_Objet = '.$_GET['num_Objet'].' AND id_membre = ' . $_SESSION['id'];
	$sel = mysqli_query($link, $reqsel);

	foreach($sel as $enr)
	{
		if($enr['Qtte'] != 0)
		{
			attraper($_SESSION['id'], $link);
			supprimerPokeballs($_SESSION['id'], $link,$_GET['num_Objet']);
			$capturer = 1;
		}
	}
	echo $capturer;
}
?>
