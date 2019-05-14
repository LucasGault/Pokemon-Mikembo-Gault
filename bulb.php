<?php
session_start();

include './PHP/security.php';
include './PHP/users.php';
$link = linkBdd();
verification($_SESSION['id']);

$insert = 'INSERT INTO equipe(id_membre,Numero,Num_Attaque1,Num_Attaque2,Num_Attaque3,Num_Attaque4,Niveau) VALUES('.$_SESSION['id'].',1,85,66,NULL,NULL,5)';
$reqinsert = mysqli_query($link,$insert);
$requpd = 'UPDATE equipe JOIN pokemon ON equipe.Numero = pokemon.Numero SET equipe.PV_restant = pokemon.PV WHERE id_membre = ' . $_SESSION['id'];
$upd = mysqli_query($link, $requpd);

$initobj = mysqli_query($link,'SELECT Init_Objet FROM membres WHERE id = '. $_SESSION['id']);
foreach ($initobj as $enr ) {
	if ($enr['Init_Objet'] == '0' ){
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',1,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',2,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',3,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',4,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',5,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',6,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',7,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',8,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',9,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',10,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',11,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',12,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',13,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',14,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',15,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',16,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',17,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',18,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',19,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',20,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',21,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',22,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',23,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',24,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',25,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',26,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',27,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',28,5)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',29,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',30,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',31,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',32,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',33,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',34,0)');
		mysqli_query($link,'INSERT INTO objets_joueur(id_membre,id_Objet,Qtte) VALUES ('.$_SESSION['id'].',35,0)');
		$updateinit = 'UPDATE membres SET Init_Objet = "1" WHERE id = ' . $_SESSION['id'].';';
		$requpdate = 	mysqli_query($link,$updateinit);
	}
}


echo mysqli_error($link);

header("Location: profil.php");

?>
