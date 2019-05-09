<?php
session_start();
$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

include './PHP/security.php';
include './PHP/users.php';

verification($_SESSION['id']);


$userinfo = infoUsers($_SESSION['id'], $link);

$pc = mysqli_query($link,'SELECT * FROM pc INNER JOIN pokemon	WHERE pc.Numero = pokemon.Numero AND id_membre = '. intval($_SESSION['id']));
$equipe = mysqli_query($link,'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. intval($_SESSION['id']));
$pc1 = mysqli_query($link,'SELECT * FROM pc INNER JOIN pokemon	WHERE pc.Numero = pokemon.Numero AND id_membre = '. intval($_SESSION['id']));
$equipe1 = mysqli_query($link,'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. intval($_SESSION['id']));
?>

<!DOCTYPE html>
<html>
<head>
	<title>Equipe</title>
	<link rel="stylesheet" href="./CSS/equipe.css">
	<link  href="./Images/Fond/Icone.png" rel="icon"/>
</head>
<body>
	<div id="team">
		<?php
		while($ligne = mysqli_fetch_assoc($equipe)){
			echo "<div id='equipe'>";
			echo $ligne['Miniature'];
			echo "<p id=nom>".$ligne['Nom']."</p>";
			echo "<p id=level>N. ".$ligne['Niveau']."</p>";
			echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
			echo "</div>";
		}
		?>
	</div>
	<div id="pc">
		<div id='imgpc'>
			<?php
			while($ligne = mysqli_fetch_assoc($pc)){
				echo $ligne['Miniature'];
			}
				?>
			</div>
		</div>
		<div id="gestion">
			<button id="retirer">Retirer</button>
			<br />	<br />
			<button id="stocker">Stocker</button>
		</div>
		<div id="movere">
			<div class="retirer">
				<?php
				while($ligne = mysqli_fetch_assoc($pc1)){
					$numpc1 = $ligne['Id_PC'];
					$_SESSION['numpc'] = $numpc1;
					echo $ligne['Miniature'];
					echo $_SESSION['numpc'];
				}
				?>
			</div>
		</div>
		<div id="movest">
			<div class="stocker">
				<?php
				while($ligne = mysqli_fetch_assoc($equipe1)){
					echo "<p>".$ligne['Nom']."</p>";
				}
				?>
			</div>
		</div>
		<div id="return">
			<button id="Retour">Retour</button>
		</div>
		<script type="text/javascript" src="./JS/equipe.js"></script>
		<?php
		if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id'])
		{
			?>
			<a href="deconnexion.php">Se déconnecter</a>
			<?php
		}
		?>
	</body>
	</html>
