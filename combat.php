<?php
session_start();

include './PHP/security.php';
include './PHP/users.php';
include './PHP/pokemons.php';

$link = linkBdd();

verification($_SESSION['id']);

$userinfo = infoUsers($_SESSION['id'], $link);

?>

<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="./CSS/combat.css">
	<link  href="./Images/Fond/Icone.png" rel="icon"/>
	<title>Combat</title>
</head>
<body>
	<div id="joueur">

	</div>
	<div id="return">
		<button id="retour">Retour</button>
	</div>
	<?php
	if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id'])
	{
		?>
		<a href="deconnexion.php">Se déconnecter</a>
		<?php
	}
	?>
	<script type="text/javascript" src="./JS/combat.js"></script>
</body>
</html>
