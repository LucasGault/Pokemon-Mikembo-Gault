<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");


include './PHP/pokemons.php';
include './PHP/bdd.php';
include './PHP/security.php';


verification($_SESSION['id']);

$reqsel = 'SELECT * FROM equipe WHERE id_membre = ' . $_SESSION['id'];

$reqexe = mysqli_query($link, $reqsel);

$nb = mysqli_num_rows($reqexe);

if($nb < 5)
{
	ajouterPokemon(86, "pc", "equipe", $link);
	supprimerPokemon(86, "pc", $link);
}
else
	echo "Equipe pleine !";

header("Location: equipe.php");




?>