<?php

$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");
$date = date("Y-m-d");
$now = time();
if (isset($_POST['valider']))
{
	$pseudo = htmlspecialchars($_POST['pseudo']);
	$email = htmlspecialchars($_POST['email']);
	$mdp1 = sha1($_POST['mdp1']);
	$mdp2 = sha1($_POST['mdp2']);

	if (!empty($_POST['pseudo']) AND !empty($_POST['mdp1']) AND !empty($_POST['mdp2']) AND !empty($_POST['email']))
	{

		$pseudo_length = strlen($pseudo);
		if ($pseudo_length <= 255)
		{
			if (filter_var($email, FILTER_VALIDATE_EMAIL))
			{
				$reqemail = mysqli_query($link,'SELECT * FROM membres WHERE email = '.'"'.$email.'"');
				$emailexist = mysqli_num_rows($reqemail);

				/*$reqpseudo = ('SELECT * FROM membres WHERE pseudo = '.$pseudo);*/

				if($emailexist == 0)
				{
					if ($mdp1 == $mdp2)
					{
						$insertmbr = ('INSERT INTO membres(pseudo,pass,email,date_inscription,date_derniere_recompense) VALUES ('.'"'.$pseudo.'"'.','.'"'.$mdp1.'"'.','.'"'.$email.'"'.','.'"'.$date.'"'.','.'"'.$now.'"'.')');
						mysqli_query($link,$insertmbr);
						$erreur = 'Votre compte a bien été enregistré !';
						header('Location: connexion.php');
					}
					else
					$erreur = 'Vos mot de passe ne correspondent pas !';

				}
				else
				$erreur = 'Cette adresse mail est déjà utilisée ou pseudo déjà utilisé !';
			}
			else
			$erreur = 'Votre adresse mail n\'est pas valide !';
		}
		else
		$erreur = 'Votre pseudo ne doit pas dépasser 255 caractères !';
	}
	else
	$erreur = 'Tous les champs doivent être complétés';
}

?>



<!DOCTYPE html>
<html>
<head>
	<title>Sign up</title>
	<link  href="./Images/Fond/Icone.png" rel="icon"/>
	<link rel="stylesheet" href="./CSS/inscription.css">
	<meta charset="utf-8">
</head>
<body>
	<div>
		<fieldset>
			<h2>Inscription</h2>
			<br>
			<form id="form1" method="post" action="">
				<div id="divEcrire">

				<!-- <div id="divPseudo"> -->
					<label for="pseudo">Pseudo: </label><br />
					<input id="ecrire" type="text" name="pseudo" placeholder="Pseudo" value="<?php if (isset($pseudo)) {echo $pseudo;} ?>">
					<br />
				<!-- </div>
				<div id="divMDP"> -->
					<label for="motdepass1">Mot de passe: </label><br />
					<input id="ecrire" type="password" placeholder="Mot de passe" name="mdp1">
					<br />
				<!-- </div>
				<div id="divMDP2"> -->
					<label class="mdp2" for="motdepass2">Confirmation du mot de passe: </label><br />
					<input id="ecrire"  type="password" placeholder="Mot de passe" name="mdp2">
					<br />
				<!-- </div>
				<div id="divMail"> -->
					<label for="email">Adresse email: </label><br />
					<input id="ecrire" type="email" name="email" placeholder="Email" value="<?php if (isset($email)) {echo $email;} ?>">
					<br>
				<!-- </div> -->
				</div>
			</fieldset>
			<div id="divBouton">
				<input id="appuyer" type="submit" name="valider" value="S'incrire">
			</form>
			<form method="post" action="connexion.php">
				<input id="appuyer" type="submit" name="DejaInscrit" value="Déjà inscrit ?">
			</form>
		</div>
		<div id="divFont">
		<?php
		if (isset($erreur))
		echo '<font	>'.$erreur.'</font>';
		?>
		</div>
	</div>
</body>
</html>
