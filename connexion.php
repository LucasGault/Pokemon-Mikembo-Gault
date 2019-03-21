<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

if (isset($_POST['validerconnexion']))
{
	$pseudoconnect = htmlspecialchars($_POST['pseudoconnect']);
	$mdpconnect = sha1($_POST['mdpconnect']);

	if(!empty($pseudoconnect) AND !empty($mdpconnect))
	{
		$requser = mysqli_query($link,'SELECT * FROM membres WHERE pseudo = '.'"'.$pseudoconnect.'"'.' AND pass = '.'"'.$mdpconnect.'"');
		$pseudoexist = mysqli_num_rows($requser);

		if ($pseudoexist == 1)
		{
			$userinfo = mysqli_fetch_array($requser);
			$_SESSION['id'] = $userinfo['id'];
			$_SESSION['pseudo'] = $userinfo['pseudo'];
			$_SESSION['email'] = $userinfo['email'];
			header('Location: profil.php?id='.$_SESSION['id']);
		}
		else
			$erreur = 'Mauvais mail ou mot de passe';
	}	
	else
		$erreur = 'Tous les champs doivent être complétés !';
}

?>



<!DOCTYPE html>
<html>
<head>
	<title>Sign in</title>
	<meta charset="utf-8">
</head>
<body>
	
	<div align="center">
		<h2>Connexion</h2>
		<br><br>
		<form method="post" action="">
			<input type="text" name="pseudoconnect" placeholder="Pseudo">
			<input type="password" name="mdpconnect" placeholder="Mot de passe">
			<input type="submit" name="validerconnexion" value="Se connecter">
		</form>
		<?php 
		if (isset($erreur))
			echo '<font color="red">'.$erreur.'</font>';
		?>
	</div>
	 
</body>
</html>

