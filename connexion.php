<?php
session_start();

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

include './PHP/users.php';
include './PHP/pokemons.php';

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
			$recompense = mysqli_query($link,'SELECT date_derniere_recompense FROM membres WHERE id = '. $_SESSION['id']);
			$reqdaterecompense = 'UPDATE membres SET date_derniere_recompense =' . time() . ' WHERE id = ' . $_SESSION['id'].';';

			// recompenses quotidienne
			foreach ($recompense as $enr ) {
				if (($enr['date_derniere_recompense'] + 86400) < time()){
					$daterecompense = mysqli_query($link,$reqdaterecompense);
					recompense($_SESSION['id'], $link);
					restoration($_SESSION['id'], $link);
				}
			}

			$premierecoe = mysqli_query($link, 'SELECT COUNT(*) FROM equipe WHERE id_membre =' .$_SESSION['id']);
			$premierecopc = mysqli_query($link, 'SELECT COUNT(*) FROM pc WHERE id_membre =' .$_SESSION['id']);
			foreach($premierecoe as $enr1){
				foreach($premierecopc as $enr){
					if (($enr['COUNT(*)']) >= 1 || ($enr1['COUNT(*)']) >= 1) {
						header('Location: profil.php');
					}else{
						header('Location: PremiereConnexion.php');
					}
				}
			}
			$co = mysqli_query($link, 'SELECT Connecter FROM membres WHERE id =' .$_SESSION['id']);
			foreach($co as $enr){
				$co1 = mysqli_query($link, "UPDATE membres SET Connecter = '1' WHERE id =" .$_SESSION['id'] );
			}
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
  
	<div id="body">
		<div id="div1">
			<h2>Connexion</h2>
			<br>
			<form id="form1" method="post" action="">
				Pseudo: <br />
				<input id="ecrire" type="text" name="pseudoconnect" placeholder="Pseudo"><br />
				Mot de passe: <br />
				<input id="ecrire" type="password" name="mdpconnect" placeholder="Mot de passe"><br />
			</div>
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
