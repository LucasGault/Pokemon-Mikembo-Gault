<?php

$link = mysqli_connect("dwarves.iut-fbleau.fr","/*login*/","/*Mdp*/","/*BasedeDonnées*/");

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
						$insertmbr = ('INSERT INTO membres(pseudo,pass,email) VALUES ('.'"'.$pseudo.'"'.','.'"'.$mdp1.'"'.','.'"'.$email.'"'.')');
						mysqli_query($link,$insertmbr);
						$erreur = 'Votre compte a bien été enregistré !';
						header('Location: connexio.php');
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
	<meta charset="utf-8">
</head>
<body>
	
	<div align="center">
		<h2>Inscription</h2>
		<br><br>
		<form method="post" action="">
			<table>
				<tr>
					<td align="right">
					<label for="pseudo">Pseudo</label>
					</td>
					<td align="right">
						<input id="pseudo" type="text" name="pseudo" placeholder="votre pseudo" value="<?php if (isset($pseudo)) {echo $pseudo;} ?>">
					</td>
				</tr>
				<tr>
					<td align="right">
					<label for="motdepass1">Mot de passe</label>
					</td>
					<td align="right">
						<input id="motdepass1" type="password" name="mdp1">
					</td>
				</tr>
				<tr>
					<td align="right">
					<label for="motdepass2">Retapez votre mot de passe</label>
					</td>
					<td align="right">
						<input id="motdepass2" type="password" name="mdp2">
					</td>
				</tr>
				<tr>
					<td align="right">
					<label for="email">Adresse email</label>
					</td>
					<td align="right">
						<input id="email" type="email" name="email" placeholder="votre email" value="<?php if (isset($email)) {echo $email;} ?>">
					</td>
				</tr>
				<tr>
					<td></td>
					<td align="center">
						<br>
						<input type="submit" name="valider" value="S'incrire">
						<input type="reset" name="effacer" value="effacer">
					</td>
				</tr>
			</table>
		</form>
		<?php 
		if (isset($erreur))
			echo '<font color="red">'.$erreur.'</font>';
		?>
	</div>
	 
</body>
</html>

