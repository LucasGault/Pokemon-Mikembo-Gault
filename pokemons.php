<?php



if(isset($_GET['argent'])){
	session_start();
	$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

	$requser = mysqli_query($link,'SELECT * FROM membres WHERE id = '.$_SESSION['id']);
	foreach ($requser as $enr) {
		echo "PokeDollar : ".$enr['Argent']." ₽";
	}
}


function infoPokemon($id_membre, $id_pokemon, $table)
{
	$reqsel = 'SELECT id_membre, Numero, Num_Attaque1, Num_Attaque2, Num_Attaque3, Num_Attaque4, Niveau, PV_restant FROM ' . $table . ' WHERE Numero = ' . $id_pokemon . ' AND id_membre = ' . $id_membre;

	return $reqsel;
}

function supprimerPokemon($id_membre, $id_pokemon,$table, $link)
{
	$reqdel = 'DELETE FROM ' . $table . ' WHERE Numero = ' . $id_pokemon . ' AND id_membre = ' . $id_membre;

	$reqexe = mysqli_query($link, $reqdel);

	return $reqexe;
}

function ajouterPokemon($id_pokemon, $tableSrc, $tableDest, $link)
{
	$reqins = "INSERT INTO " . $tableDest . "(id_membre, Numero, Num_Attaque1, Num_Attaque2, Num_Attaque3, Num_Attaque4, Niveau, PV_restant) " . infoPokemon($id_membre, $id_pokemon, $tableSrc);

	$reqexe = mysqli_query($link, $reqins);

	return $reqexe;
}

// fonction pour stocker le pokemon choisi
function stocker($id_membre, $id_equipe, $link)
{
	$reqpokemon = 'SELECT id_membre, Numero, Num_Attaque1, Num_Attaque2, Num_Attaque3, Num_Attaque4, Niveau, PV_restant FROM equipe WHERE Id_equipe = ' . $id_equipe;
	$reqajout = 'INSERT INTO pc(id_membre, Numero, Num_Attaque1, Num_Attaque2, Num_Attaque3, Num_Attaque4, Niveau, PV_restant)'. $reqpokemon;
	$reqsupprimer = 'DELETE FROM equipe WHERE Id_equipe = ' . $id_equipe;

	mysqli_query($link, $reqajout);
	mysqli_query($link, $reqsupprimer);
}

// fonction pour retirer le pokemon choisi
function retirer($id_membre, $id_pc, $link)
{
	$reqpokemon = 'SELECT id_membre, Numero, Num_Attaque1, Num_Attaque2, Num_Attaque3, Num_Attaque4, Niveau, PV_restant FROM pc WHERE Id_PC = ' . $id_pc;
	$reqajout = 'INSERT INTO equipe(id_membre, Numero, Num_Attaque1, Num_Attaque2, Num_Attaque3, Num_Attaque4, Niveau, PV_restant)'. $reqpokemon;
	$reqsupprimer = 'DELETE FROM pc WHERE Id_PC = ' . $id_pc;

	mysqli_query($link, $reqajout);
	mysqli_query($link, $reqsupprimer);
}

// fonction pour les degats d'une attaque donnee
function dommage($id_membre, $num_pokemon, $num_attaque, $link)
{
	$reqpuissance = 'SELECT Puissance_Attaque FROM equipe INNER JOIN attaque ON equipe.Num_Attaque' . $num_attaque . ' = attaque.Num_Attaque WHERE id_membre = ' . $id_membre . ' AND Numero = ' . $num_pokemon;

	mysqli_query($link, $reqpuissance);
}

// fonction pour attraper le pokemon choisi
function attraper($id_membre, $link)
{
	$reqsel = 'SELECT * FROM equipe WHERE id_membre = ' . $id_membre;
	$reqexe1 = mysqli_query($link, $reqsel);

	$reqlvl = 'SELECT AVG(Niveau) FROM equipe WHERE id_membre = ' . $id_membre;
	$lvl = mysqli_query($link, $reqlvl);

	$reqins1 = 'INSERT INTO equipe(id_membre,Numero,Num_Attaque1,Num_Attaque2,Num_Attaque3,Num_Attaque4,Niveau)
	VALUES(' . $id_membre . ',' . rand(1,151) . ',1,2,3,4,' . rand(5,10) . ')';
	$reqins2 = 'INSERT INTO pc(id_membre,Numero,Num_Attaque1,Num_Attaque2,Num_Attaque3,Num_Attaque4,Niveau)
	VALUES(' . $id_membre . ',' . rand(1,151) . ',1,2,3,4,' . rand(5,10) . ')';

	$nb = mysqli_num_rows($reqexe1);
	if($nb < 5){
		$ins3 = mysqli_query($link, $reqins1);
	}else{
		$ins3 = mysqli_query($link, $reqins2);
	}

}

// place vers le premier
function placeVersPremier($id_membre, $num_pokemon, $link)
{
	$reqplace = 'UPDATE equipe SET Place_Equipe = Place_Equipe - 1 WHERE id_membre = ' . $id_membre . ' AND Numero = ' . $num_pokemon;

	mysqli_query($link,$reqplace);
}

// place vers le dernier
function placeVersDernier($id_membre, $num_pokemon, $link)
{
	$reqplace = 'UPDATE equipe SET Place_Equipe = Place_Equipe + 1 WHERE id_membre = ' . $id_membre . ' AND Numero = ' . $num_pokemon;

	mysqli_query($link,$reqplace);
}

// fonction pour la restoration de PV quotidienne
function restoration($id_membre, $link)
{
	$requpd = 'UPDATE equipe JOIN pokemon ON equipe.Numero = pokemon.Numero SET equipe.PV_restant = pokemon.PV WHERE id_membre = ' . $id_membre;

	$upd = mysqli_query($link, $requpd);

	$requpd = 'UPDATE pc JOIN pokemon ON pc.Numero = pokemon.Numero SET pc.PV_restant = pokemon.PV WHERE id_membre = ' . $id_membre;

	$upd = mysqli_query($link, $requpd);

	$requpdpp1 = 'UPDATE equipe JOIN attaque ON equipe.Num_Attaque1 = attaque.Num_Attaque SET equipe.PP_att1 = attaque.PP_Attaque WHERE id_membre =' . $id_membre;
	$updpp1 = mysqli_query($link, $requpdpp1);
	$requpdpp2 = 'UPDATE equipe JOIN attaque ON equipe.Num_Attaque2 = attaque.Num_Attaque SET equipe.PP_att2 = attaque.PP_Attaque WHERE id_membre =' . $id_membre;
	$updpp2 = mysqli_query($link, $requpdpp2);
	$requpdpp3 = 'UPDATE equipe JOIN attaque ON equipe.Num_Attaque3 = attaque.Num_Attaque SET equipe.PP_att3 = attaque.PP_Attaque WHERE id_membre =' . $id_membre;
	$updpp3 = mysqli_query($link, $requpdpp3);
	$requpdpp4 = 'UPDATE equipe JOIN attaque ON equipe.Num_Attaque4 = attaque.Num_Attaque SET equipe.PP_att4 = attaque.PP_Attaque WHERE id_membre =' . $id_membre;
	$updpp4 = mysqli_query($link, $requpdpp4);
}


?>
