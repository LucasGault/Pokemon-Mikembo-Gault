<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

include './PHP/security.php';
include './PHP/users.php';

verification($_SESSION['id']);


$userinfo = infoUsers($_SESSION['id'], $link);
$balli = mysqli_query($link,'SELECT * FROM objets_joueur INNER JOIN objets WHERE id_Objet = Num_Objet AND Num_TypeObjet = 1 AND Qtte > 0 AND id_membre = '.$_SESSION['id']/*.'ORDER BY Num_Objet'*/);
$pvppi = mysqli_query($link,'SELECT * FROM objets_joueur INNER JOIN objets WHERE id_Objet = Num_Objet AND Num_TypeObjet = 2 AND Qtte > 0 AND id_membre = ' . intval($_SESSION['id']) );
$evoi = mysqli_query($link,"SELECT * FROM objets_joueur INNER JOIN objets WHERE id_Objet = Num_Objet AND Num_TypeObjet = 3 AND Qtte > 0 AND id_membre = ". intval($_SESSION['id']) );

$equipe1 = mysqli_query($link,'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. intval($_SESSION['id']));

?>



<!DOCTYPE html>
<html>
<head>
	<title>Profil</title>
	<link rel="stylesheet" href="./CSS/profil.css">
	<link  href="./Images/Fond/Icone.png" rel="icon"/>
	<meta charset="utf-8">
</head>
<header>
	<p id="argent">PokeDollar : <?php echo $userinfo['Argent'];?> ₽</p>
	<p id="bonjour">Bonjour <?php echo $userinfo['pseudo'] ?> !</p>
</header>
<body>
	<div id="inventaire">
		<p>Inventaire</p>
		<div id="header">
			<div id="ball"><p>Balls</p></div>
			<div id="pvpp"><p>PV/PP</p></div>
			<div id="evo"><p>&Eacute;volution</p></div>
		</div>
		<div id="body">
			<div class="ball">
				<?php
				while($ligne = mysqli_fetch_assoc($balli)){
					echo "<div id='vendreball'>";
					echo $ligne['Img_Objet'];
					echo "<p id='nomObj'>".$ligne['Nom_Objet']."</p>";
					echo "<p id='qtte'> &#215;".$ligne['Qtte']." </p>";
					echo '<div id="desc">';
					echo "<p class='desc'>".$ligne['Description_Objet']."</p>";
					echo "</div>";
					echo "</div>";
				}
				?>
			</div>
			<div class="pvpp">
				<?php
				while($ligne = mysqli_fetch_assoc($pvppi)){
					$soinsobjets = $ligne['Num_Objet'];
					echo "<div id='vendresoins'>";
					echo $ligne['Img_Objet'];
					echo "<p id='nomObj'>".$ligne['Nom_Objet']."</p>";
					echo "<p id='qtte'> &#215;".$ligne['Qtte']." </p>";
					echo '<div id="desc">';
					echo "<p class='desc'>".$ligne['Description_Objet']."</p>";
					echo "</div>";
					echo "</div>";
				}
				?>
			</div>
			<div class="evo">
				<?php
				while($ligne = mysqli_fetch_assoc($evoi)){
					echo "<div id='vendre'>";
					echo $ligne['Img_Objet'];
					echo "<p id='nomObj'>".$ligne['Nom_Objet']."</p>";
					echo "<p id='qtte'> &#215;".$ligne['Qtte']." </p>";
					echo '<div id="desc">';
					echo "<p class='desc'>".$ligne['Description_Objet']."</p>";
					echo "</div>";
					echo "</div>";
				}
				?>
			</div>
		</div>
	</div>
	<div id="menu">
		<p>Menu Principal</p>
		<button id="equipe" >Equipe</button>
		<button id="chasser" >Chasser</button><br />
		<button id="boutique">Boutique</button>
		<button id="combat" >Combat</button><br />
	</div>
	<?php
	if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id'])
	{
		?>
		<a href="deconnexion.php">Se déconnecter</a>
		<?php
	}
	?>
	<div id="equipepoke">
		<?php
		while($ligne = mysqli_fetch_assoc($equipe1)){
			$numpoke = $ligne['Id_equipe'];
			echo "<p id='movenom' onclick='utilisation_Objet_Soins($soinsobjets,$numpoke)'>" . $ligne['Nom'] . "</p>";
		}
		?>
	</div>
	<script type="text/javascript" src="./JS/profil.js"></script>
</body>
</html>
