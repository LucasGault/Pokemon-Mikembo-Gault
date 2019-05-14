<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

include './PHP/security.php';
include './PHP/users.php';
include './PHP/pokemons.php';

verification($_SESSION['id']);
$userinfo = infoUsers($_SESSION['id'], $link);
$sessid = intval($_SESSION['id']);
$requser = mysqli_query($link,'SELECT * FROM membres WHERE id = '.$sessid);
$userinfo = mysqli_fetch_array($requser);

pokemonsauvage($link,$pokerand,$niveaurand,$_SESSION['id']);


$imgpokemoneq = mysqli_query($link,'SELECT Miniature FROM equipe INNER JOIN pokemon	WHERE Place_Equipe = "1" AND equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id']);
$imgpokemonsauv = mysqli_query($link,'SELECT Miniature FROM pokemonsauvage INNER JOIN pokemon	WHERE pokemonsauvage.Id_Pokemon = pokemon.Numero');

$barepveq = mysqli_query($link,'SELECT * FROM equipe INNER JOIN pokemon	WHERE Place_Equipe = "1" AND equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id']);
$barepvsauv = mysqli_query($link,'SELECT * FROM pokemonsauvage INNER JOIN pokemon	WHERE pokemonsauvage.Id_Pokemon = pokemon.Numero');

$att1 = mysqli_query($link,'SELECT * FROM equipe INNER JOIN attaque INNER JOIN type WHERE equipe.Num_Attaque1 = attaque.Num_Attaque AND attaque.Type_Attaque = type.Num_Type AND Place_Equipe = "1" AND id_membre = '. intval($_SESSION['id']));
$att2 = mysqli_query($link,'SELECT * FROM equipe INNER JOIN attaque INNER JOIN type WHERE equipe.Num_Attaque2 = attaque.Num_Attaque AND attaque.Type_Attaque = type.Num_Type AND Place_Equipe = "1" AND id_membre = '. intval($_SESSION['id']));
$att3 = mysqli_query($link,'SELECT * FROM equipe INNER JOIN attaque INNER JOIN type WHERE equipe.Num_Attaque3 = attaque.Num_Attaque AND attaque.Type_Attaque = type.Num_Type AND Place_Equipe = "1" AND id_membre = '. intval($_SESSION['id']));
$att4 = mysqli_query($link,'SELECT * FROM equipe INNER JOIN attaque INNER JOIN type WHERE equipe.Num_Attaque4 = attaque.Num_Attaque AND attaque.Type_Attaque = type.Num_Type AND Place_Equipe = "1" AND id_membre = '. intval($_SESSION['id']));

$sacball = mysqli_query($link,"SELECT * FROM objets_joueur INNER JOIN objets WHERE id_Objet = Num_Objet AND Utilisable_En_Combat = 'oui' AND Num_TypeObjet = 1 AND Qtte != 0 AND id_membre = ".$_SESSION['id']);
$sacpvpp = mysqli_query($link,"SELECT * FROM objets_joueur INNER JOIN objets WHERE id_Objet = Num_Objet AND Utilisable_En_Combat = 'oui' AND Num_TypeObjet = 2 AND Qtte != 0 AND id_membre = ".$_SESSION['id']);

$equipe = mysqli_query($link,'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id']);

?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./CSS/chasser.css">
	<link  href="./Images/Fond/Icone.png" rel="icon"/>
	<title>Chasser</title>
</head>
<body>
	<div id="pokemoneq">
		<?php
		while ($ligne = mysqli_fetch_assoc($imgpokemoneq)) {
			echo $ligne['Miniature'];
		}
		?>
	</div>
	<div id="pokemonsauvage">
		<?php
		while ($ligne = mysqli_fetch_assoc($imgpokemonsauv)) {
			echo $ligne['Miniature'];
		}
		?>
	</div>
	<div id="pvpokeeq">
		<?php
		while ($ligne = mysqli_fetch_assoc($barepveq)) {
			echo "<p id=nom>".$ligne['Nom']."</p>";
			echo "<p id=level>N. ".$ligne['Niveau']."</p>";
			echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
			echo "<p id='pvbarre'>PV</p>";
			echo "<div id='barrepv'></div>";
		}
		?>
	</div>
	<div id="pvpokesauvage">
		<?php
		while ($ligne = mysqli_fetch_assoc($barepvsauv)) {
			echo "<p id=nom>".$ligne['Nom']."</p>";
			echo "<p id=level>N. ".$ligne['Niveau']."</p>";
			echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
			echo "<p id='pvbarre'>PV</p>";
			echo "<div id='barrepv'></div>";
		}
		?>
	</div>
	<div id="commande">
		<div id="divcommande">
			<button id="butattaque" type="button" name="button">Attaque</button>
			<button id="butsac" type="button" name="button">Sac</button>
			<button id="butpokemon" type="button" name="button">Pokémon</button>
			<button id="butfuite" type="button" name="button">Fuite</button>
		</div>
		<div id="attaque">
			<?php

			while ($ligne = mysqli_fetch_assoc($att1)) {
				$attaque = $ligne['Num_Attaque'];
				$puissance = $ligne['Puissance_Attaque'];
				echo "<div id='attaque1' onclick='attaque_boom($attaque,$puissance);'>";
				echo "<p id='nomAttaque'>".$ligne['Nom_Attaque']."</p>";
				echo $ligne['Nom_Type'];
				echo "<p id='pp'>PP   ".$ligne['PP_att2']."/".$ligne['PP_Attaque']."</p>";
				echo "</div>";
			}
			?>

			<?php

			while ($ligne = mysqli_fetch_assoc($att2)) {
				$attaque = $ligne['Num_Attaque'];
				$puissance = $ligne['Puissance_Attaque'];
				echo "<div id='attaque2' onclick='attaque_boom($attaque,$puissance);'>";
				echo "<p id='nomAttaque'>".$ligne['Nom_Attaque']."</p>";
				echo $ligne['Nom_Type'];
				echo "<p id='pp'>PP   ".$ligne['PP_att2']."/".$ligne['PP_Attaque']."</p>";
				echo "</div>";
			}

			while ($ligne = mysqli_fetch_assoc($att3)) {
				$attaque = $ligne['Num_Attaque'];
				$puissance = $ligne['Puissance_Attaque'];
				echo "<div id='attaque3' onclick='attaque_boom($attaque,$puissance);'>";
				echo "<p id='nomAttaque'>".$ligne['Nom_Attaque']."</p>";
				echo $ligne['Nom_Type'];
				echo "<p id='pp'>PP   ".$ligne['PP_att2']."/".$ligne['PP_Attaque']."</p>";
				echo "</div>";
			}

			while ($ligne = mysqli_fetch_assoc($att4)) {
				$attaque = $ligne['Num_Attaque'];
				$puissance = $ligne['Puissance_Attaque'];
				echo "<div id='attaque4' onclick='attaque_boom($attaque,$puissance);'>";
				echo "<p id='nomAttaque'>".$ligne['Nom_Attaque']."</p>";
				echo $ligne['Nom_Type'];
				echo "<p id='pp'>PP   ".$ligne['PP_att2']."/".$ligne['PP_Attaque']."</p>";
				echo "</div>";
			}
			?>
			<button class="retouratt" id="retour" type="button" >&#8618;</button>
		</div>
		<div id="sac">
			<button id="butball" type="button" name="button">Balls</button>
			<button id="butsoins" type="button" name="button">Soins</button>
			<button class="retoursac" id="retour" type="button" >&#8618;</button>
			<div id="ball">
				<?php
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
				?>
			</div>
			<div id="soins">
				<?php
				$i = 1;
				while ($ligne = mysqli_fetch_assoc($sacpvpp)) {
					echo "<div class='soins' id='soins".$i."'>";
					echo "<p id='nomobjt'>".$ligne['Nom_Objet']."</p>";
					echo "<p id='qtte'>x   ".$ligne['Qtte']."</p>";
					echo "</div>";
					echo "<div class='descsoins' id='descsoins".$i."'>";
					echo $ligne['Img_Objet'];
					echo "<p id='nomobjt'>".$ligne['Nom_Objet']."</p>";
					echo "<p id='qtte'>x   ".$ligne['Qtte']."</p>";
					echo "<p id='description'>".$ligne['Description_Objet']."</p>";
					echo "<input id='usesoins".$i."' type='button' value='Utiliser' onclick='utilisation_Objet($num_objet)'>";
					echo "<button class='retourdescsoins".$i."' id='retour' type='button' >&#8618;</button>";
					echo "</div>";
					$i = $i + 1;
				}
				?>
				<button class="retoursoins" id="retour" type="button" >&#8618;</button>
			</div>
		</div>
		<div id="pokemon">
			<?php
			$i2 = 1;
			while($ligne = mysqli_fetch_assoc($equipe)){
				echo "<div id='equipe' class='equipe".$i2."'>";
				echo $ligne['Miniature'];
				echo "<p id=nom>".$ligne['Nom']."</p>";
				echo "<p id=level>N. ".$ligne['Niveau']."</p>";
				echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
				echo "</div>";
				$i2 = $i2 + 1;
			}
			?>
			<button class="retourpoke" id="retour" type="button" >&#8618;</button>
		</div>
	</div>
	<script type="text/javascript" src="./JS/chasser.js"></script>
</body>
</html>
