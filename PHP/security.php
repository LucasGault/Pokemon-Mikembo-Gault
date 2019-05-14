<?php

//verifier si il est connecte
function verification($id_membre)
{
	if(!isset($id_membre))
	{
		header("Location: connexion.php");
	}
}

// verifier si le pseudo existe
function pseudoExist($pseudo,$link)
{
	$resultat = false;

	$reqmembre = 'SELECT * FROM membres WHERE pseudo = "' . $pseudo . '"';
	$membre = mysqli_query($link, $reqmembre);
	
	$pseudoexist = mysqli_num_rows($membre);

	if ($pseudoexist != 0)
	{
		$resultat = true;
	}

	return $resultat;
}

// verifier si le mail existe 
function emailExist($i_email, $link)
{
	$resultat = false;

	$reqemail = 'SELECT * FROM membres WHERE email = "' . $i_email . '"';
	$m_email = mysqli_query($link, $reqemail);

	$emailexist = mysqli_num_rows($m_email);

	if ($emailexist != 0)
	{
		$resultat = true;
	}

	return $resultat;
}



?>