<?php

function infoSimple($id_membre, $table, $link)
{
	$reqsel = 'SELECT * FROM ' . $table . ' WHERE id_membre = ' . $id_membre;

	$reqexe = mysql_query($link, $resel);

}

function infoCondition($table, $attribut, $valeur, $link)
{
	$reqsel = 'SELECT * FROM ' . $table . ' WHERE ' . $attribut . ' = ' . $valeur;

	$reqexe = mysqli_query($link, $reqsel);

}

?>