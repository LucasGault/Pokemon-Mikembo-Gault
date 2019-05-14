<?php
session_start();

include './PHP/users.php';
include './PHP/security.php';

verification($_SESSION['id']);

$link = linkBdd();

if (isset($_SESSION['id']) && isset($_GET['qtte']) && isset($_GET['num'])){
  $sessid = intval($_SESSION['id']);
  $objet = mysqli_query($link,'SELECT Prix_Objet FROM objets WHERE Num_Objet='.$_GET['num']);


  while ($ligne=mysqli_fetch_assoc($objet)) {
  		$prixobj = $ligne['Prix_Objet'];

  }
  $prixtotal = $_GET['qtte']*$prixobj;
  // echo $prixtotal."      ";
  // echo $_GET['num'];
  $prix = 'UPDATE membres SET Argent = Argent - '.$prixtotal.' WHERE id =' . $_SESSION['id'].';';
  echo $prix;
  $reqprix = mysqli_query($link, $prix);
  $obj = 'UPDATE objets_joueur SET Qtte = Qtte +'.$_GET['qtte'].' WHERE id_Objet = '. $_GET['num'] .' AND id_membre =' . $_SESSION['id'].';';
  $reqobj = mysqli_query($link, $obj);
}
?>
