<?php
session_start();

include './PHP/pokemons.php';
include './PHP/bdd.php';
include './PHP/security.php';
include './PHP/users.php';

$link = linkBdd();

verification($_SESSION['id']);

$reqsel = 'SELECT * FROM equipe WHERE id_membre = ' . $_SESSION['id'];

$reqexe = mysqli_query($link, $reqsel);

$nb = mysqli_num_rows($reqexe);

if($nb < 6)
{
	retirer($_SESSION['id'], $_GET['num'], $link);
}


?>
