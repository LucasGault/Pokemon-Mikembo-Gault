<?php

// fonction pour la connexion à la base de donnée
function linkBdd()
{
	$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

	return $link;
}

function ajoutPokeDollars($id_membre, $nb, $link)
{
	$reqargent = 'UPDATE membres SET Argent = Argent + ' . $nb . ' WHERE id =' . $id_membre;

	$reqexe = mysqli_query($link, $reqargent);

	return $reqexe;
}

function supprimerPokeDollars($id_membre, $nb, $link)
{
	$reqargent = 'UPDATE membres SET Argent = Argent - ' . $nb . ' WHERE id = ' . $id_membre;

	$reqexe = mysqli_query($link, $reqargent);

	return $reqexe;
}

function ajoutPokeBalls($id_membre, $link)
{
	$reqball = 'UPDATE objets_joueur SET Qtte = Qtte + 1 Where id_Objet = 28 AND id_membre =' . $id_membre;

	$reqexe = mysqli_query($link, $reqball);
}

function supprimerPokeballs($id_membre, $link, $num_objet)
{
	$requpd = 'UPDATE objets_joueur SET Qtte = Qtte - 1 Where id_Objet = '.$num_objet.' AND id_membre =' . $id_membre;

	$upd = mysqli_query($link, $requpd);
}

function acheter($id_membre,$id_Objet, $qtte, $link)
{
	$requpd = 'UPDATE objets_joueur SET Qtte = Qtte + ' . $qtte . ' WHERE id_Objet = ' . $id_Objet . ' AND id_membre = ' . $id_membre;

	$upd = mysqli_query($link, $requpd);
}

function soin($id_membre, $num_pokemon, $num_objet, $link)
{
	$reqpv = 'SELECT * FROM objets WHERE Num_TypeObjet = 2';

	if($num_objet == 1)
	{
		$reqsoin = 'UPDATE equipe SET PV_restant = PV_restant + 20 WHERE id_membre = ' . $id_membre . ' AND Numero = ' . $num_pokemon;
	}
	else if($num_objet == 2)
	{
		$reqsoin = 'UPDATE equipe SET PV_restant = PV_restant + 50 WHERE id_membre = ' . $id_membre . ' AND Numero = ' . $num_pokemon;
	}
	else if($num_objet == 3)
	{
		$reqsoin = 'UPDATE equipe SET PV_restant = PV_restant + 200 WHERE id_membre = ' . $id_membre . ' AND Numero = ' . $num_pokemon;
	}else if($num_objet == 4){
		$reqsoin = 'UPDATE equipe JOIN pokemon ON equipe.Numero = pokemon.Numero SET equipe.PV_restant = pokemon.PV WHERE id_membre = ' . $id_membre . ' AND Numero = ' . $num_pokemon;
	}
	mysqli_query($link, $reqsoin);

}

function recompense($id_membre,$link)
{
	$argent = mysqli_query($link, 'UPDATE membres SET Argent = Argent + 50 WHERE id_membre = ' . $id_membre);
	$ball = mysqli_query($link, 'UPDATE objets_joueur SET Qtte = Qtte + 5 WHERE id_Objet = 28 AND id_membre = ' . $id_membre);
}


function infoUsers($id_membre, $link)
{
	$sessid = intval($id_membre);
	$requser = mysqli_query($link,'SELECT * FROM membres WHERE id = '.$sessid);
	$userinfo = mysqli_fetch_array($requser);

	return $userinfo;
}

?>
