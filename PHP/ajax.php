<?php
session_start();
include 'pokemons.php';
include 'users.php';
$link = linkBdd();


//actualiser le nombres de pokeball
if(isset($_GET['ballqtte'])){
	$sacball = mysqli_query($link,"SELECT * FROM objets_joueur INNER JOIN objets WHERE id_Objet = Num_Objet AND Utilisable_En_Combat = 'oui' AND Num_TypeObjet = 1 AND Qtte != 0 AND id_membre = ".$_SESSION['id']);
	$i = 1;
	while ($ligne = mysqli_fetch_assoc($sacball)) {
		$num_objet = $ligne['Num_Objet'];
		echo "<div class='ball' id='ball".$i."'>";
		echo "<p id='nomobjt'>".$ligne['Nom_Objet']."</p>";
		echo "<p id='qtte'>x   ".$ligne['Qtte']."</p>";
		echo "</div>";
		echo "<div class='desc' id='desc".$i."'>";
		echo $ligne['Img_Objet'];
		echo "<p id='nomobjt'>".$ligne['Nom_Objet']."</p>";
		echo "<p id='qtte'>x   ".$ligne['Qtte']."</p>";
		echo "<p id='description'>".$ligne['Description_Objet']."</p>";
		echo "<input id='useball".$i."' type='button' value='Utiliser' onclick='utilisation_Objet($num_objet)'>";
		echo "<button class='retourdescball".$i."' id='retour' type='button' >&#8618;</button>";
		echo "</div>";
		$i = $i + 1;
	}
	echo '<button class="retourball" id="retour" type="button" >&#8618;</button>';
}

//réalise les dégats et la redirection si le pokemon est KO
if(isset($_GET['numAttaque']) && isset($_GET['puissance_Attaque'])){
	$pvrestant = mysqli_query($link, "SELECT PV_restant FROM pokemonsauvage WHERE Id_membre=".$_SESSION['id']);
	$vie = 1;
	foreach ($pvrestant as $key) {
		if ($key['PV_restant'] - $_GET['puissance_Attaque'] < 0) {
			$pvpokemonsauvage = "UPDATE pokemonsauvage SET PV_restant = 0 WHERE Id_membre =".$_SESSION['id'];
			$reqpvsauvage = mysqli_query($link, $pvpokemonsauvage);
			$vie = 0;
		}else {
			$pvpokemonsauvage = "UPDATE pokemonsauvage SET PV_restant = PV_restant - ".$_GET['puissance_Attaque']." WHERE Id_membre =".$_SESSION['id'];
			$reqpvsauvage = mysqli_query($link, $pvpokemonsauvage);
		}
	}
	echo $vie;
}
//supprime le pokemon sauvage
if(isset($_GET['suppr'])){
	$reqsupprimer = 'DELETE FROM pokemonsauvage WHERE Id_membre='.$_SESSION['id'];
	mysqli_query($link, $reqsupprimer);
}
//actualise la barre de pv
if(isset($_GET['pvpokesauv'])){
	$barepvsauv = mysqli_query($link,'SELECT * FROM pokemonsauvage INNER JOIN pokemon	WHERE pokemonsauvage.Id_Pokemon = pokemon.Numero');
	while ($ligne = mysqli_fetch_assoc($barepvsauv)) {
		echo "<p id=nom>".$ligne['Nom']."</p>";
		echo "<p id=level>N. ".$ligne['Niveau']."</p>";
		echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
		echo "<p id='pvbarre'>PV</p>";
		echo "<div id='barrepv'></div>";
	}
}

// reafficher l'equipe
if(isset($_GET['nume']))
{
	$reqequipe = 'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'] . ' ORDER BY Place_Equipe';
	$equipe = mysqli_query($link, $reqequipe);
	while($ligne = mysqli_fetch_assoc($equipe)){
		$numteam = $ligne['Id_equipe'];
		echo "<div id='equipe'>";
		echo $ligne['Miniature'];
		echo "<p id=nom>".$ligne['Nom']."</p>";
		echo "<p id=level>N. ".$ligne['Niveau']."</p>";
		echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
		echo "<input type='button' id='haut' value='&#9650;' onclick='deplacerH($numteam)'>";
		echo "<input type='button' id='bas' value='&#9660;' onclick='deplacerB($numteam)'>";
		echo "</div>";
	}
}

// reafficher le pc
if ( isset($_GET['nump']))
{
	$reqpc = 'SELECT * FROM pc INNER JOIN pokemon	WHERE pc.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'];
	$pc = mysqli_query($link, $reqpc);
	while($ligne = mysqli_fetch_assoc($pc)){
		echo $ligne['Miniature'];
	}
}

// reafficher la selection de stockage
if ( isset($_GET['movest']))
{
	$reqequipe = 'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'];
	$equipe = mysqli_query($link, $reqequipe);
	echo '<div class="stocker">';
	while($ligne = mysqli_fetch_assoc($equipe)){
		$numequipe1 = $ligne['Id_equipe'];
		echo '<p>' . $ligne['Nom'] . '</p>';
		echo "<input type='submit' id='input-stocker' value='Stocker' onclick='requeteSt($numequipe1)'>";
	}
	echo '</div>';
}

// reafficher la selection de retrait
if ( isset($_GET['movere']))
{
	$reqpc = 'SELECT * FROM pc INNER JOIN pokemon	WHERE pc.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'];
	$pc = mysqli_query($link, $reqpc);
	echo '<div class="retirer">';
	while($ligne = mysqli_fetch_assoc($pc)){
		$numpc1 = $ligne['Id_PC'];
		echo $ligne['Miniature'];
		echo "<input type='submit' id='input-retirer' value='Retirer' onclick='requeteRe($numpc1)'>";
	}
	echo '</div>';
}
if ( isset($_GET['numpokemon'])){
	$reqplaceeq = mysqli_query($link,'SELECT Place_Equipe FROM equipe WHERE Id_equipe='.$_GET['numpokemon']);
	foreach ($reqplaceeq as $key) {
		$place = $key['Place_Equipe'];
	}
	$reqbouge = mysqli_query($link,'UPDATE equipe SET Place_Equipe = '.$place.' WHERE Place_Equipe = "1" AND Id_membre='.$_SESSION['id']);
	$reqbouge1 = mysqli_query($link,'UPDATE equipe SET Place_Equipe = 1 WHERE Id_equipe='.$_GET['numpokemon']);

}

if (isset($_GET['numth']))
{
	placeVersPremier($_SESSION['id'], $_GET['numth'], $link);
}
if (isset($_GET['numtb']))
{
	placeVersDernier($_SESSION['id'], $_GET['numtb'], $link);
}

if (isset($_GET['pokemoneq'])){
	$imgpokemoneq = mysqli_query($link,'SELECT Miniature FROM equipe INNER JOIN pokemon	WHERE Place_Equipe = "1" AND equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id']);
	while ($ligne = mysqli_fetch_assoc($imgpokemoneq)) {
		echo $ligne['Miniature'];
	}
}
if (isset($_GET['pvpokeeq'])){
	$barepveq = mysqli_query($link,'SELECT * FROM equipe INNER JOIN pokemon	WHERE Place_Equipe = "1" AND equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id']);
	while ($ligne = mysqli_fetch_assoc($barepveq)) {
		echo "<p id=nom>".$ligne['Nom']."</p>";
		echo "<p id=level>N. ".$ligne['Niveau']."</p>";
		echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
		echo "<p id='pvbarre'>PV</p>";
		echo "<div id='barrepv'></div>";
	}
}

if(isset($_GET['num_Objet']) && ($_GET['num_pokemon'])){
	echo $_GET['num_Objet']."  ".$_GET['num_pokemon'];
}

?>
