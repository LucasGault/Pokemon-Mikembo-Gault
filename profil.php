<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

if (isset($_GET['id']) AND $_GET['id'] > 0)
{
	$getid = intval($_GET['id']);
	$requser = mysqli_query($link,'SELECT * FROM membres WHERE id = '.$getid);
	$userinfo = mysqli_fetch_array($requser);
?>



<!DOCTYPE html>
<html>
<head>
	<title>Sign in</title>
	<meta charset="utf-8">
</head>
<body>
	
	<div align="center">
		<h2>Profil de <?php echo $userinfo['pseudo'] ?></h2>
		<br><br>
		Pseudo = <?php echo $userinfo['pseudo'] ?>
		<br>
		Mail = <?php echo $userinfo['email'] ?>
		<br>
		<?php 
		if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id'])
		{
		?>
		<a href="#">Editer mon profil</a><br>
		<a href="deconnexion.php">Se déconnecter</a>
		<?php
		}
		?>
	</div>
	 
</body>
</html>
<?php

}
?>
