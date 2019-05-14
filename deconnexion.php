<?php
session_start();

include './PHP/users.php';

$link = linkBdd();

$co = mysqli_query($link, 'SELECT Connecter FROM membres WHERE id =' .$_SESSION['id']);
foreach($co as $enr){
  $co1 = mysqli_query($link, "UPDATE membres SET Connecter = '0' WHERE id =" .$_SESSION['id'] );
}
$_SESSION = array();

session_destroy();
header('Location: connexion.php');
?>
