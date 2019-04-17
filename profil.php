<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

if (isset($_SESSION['id']))
{
	$sessid = intval($_SESSION['id']);
	$requser = mysqli_query($link,'SELECT * FROM membres WHERE id = '.$sessid);
	$userinfo = mysqli_fetch_array($requser);
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
		<p>Bonjour <?php echo $userinfo['pseudo'] ?> !</p>
	</header>
	<body>
		<aside>
			<div>
				<p>Liste D'amis</p>
				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
			</div>
		</aside>
		<div>
			<fieldset>
				<p>Menu Principal</p>
				<div id="divBouton">
					<div id="divHaut">
						<button id="equipe" >Equipe</button>
						<button id="chasser" >Chasser</button><br />
					</div>
					<div id="divBas">
						<button id="boutique">Boutique</button>
						<button id="combat" >Combat</button><br />
					</div>
				</div>
				<script type="text/javascript">
				var equipe = document.getElementById('equipe');
				var chasser = document.getElementById('chasser');
				var boutique = document.getElementById('boutique');
				var combat = document.getElementById('combat');

				equipe.onclick = function()
				{
					document.location.href="equipe.php";
				}
				chasser.onclick = function()
				{
					document.location.href="chasser.php";
				}
				boutique.onclick = function()
				{
					document.location.href="boutique.php";
				}
				combat.onclick = function()
				{
					document.location.href="combat.php";
				}

				</script>

			</fieldset>

		</div>
		<?php
		if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id'])
		{
			?>
			<!-- <a href="#">Editer mon profil</a><br> -->

			<a href="deconnexion.php">Se déconnecter</a>
			
			<?php
		}
		?>
	</body>
	</html>
	<?php

}
?>
