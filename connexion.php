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
			header('Location: profil.php');
		}
		else
		$erreur = 'Mauvais pseudo ou mot de passe';
	}
	else
	$erreur = 'Tous les champs doivent être complétés !';
}

?>



<!DOCTYPE html>
<html>
<head>
	<title>Sign in</title>
	<link  href="./Images/Fond/Icone.png" rel="icon"/>
	<link rel="stylesheet" href="./CSS/connexion.css">
	<meta charset="utf-8">
</head>
<body >

	<div>
		<fieldset>
			<h2>Connexion</h2>
			<br>

			<form id="form1" method="post" action="">
				Pseudo: <br />
				<input id="ecrire" type="text" name="pseudoconnect" placeholder="Pseudo"><br />
				Mot de passe: <br />
				<input id="ecrire" type="password" name="mdpconnect" placeholder="Mot de passe"><br />
			</fieldset>

			<input id="appuyer" type="submit" name="validerconnexion" value="Se connecter">

		</form>
		<form method="post" action="Inscription.php">

			<input id="appuyer" type="submit" name="alleraInscription" value="Créer un compte">
		</form>

		<?php
		if (isset($erreur))
		echo '<font >'.$erreur.'</font>';
		?>

	</div>
</body>
</html>
