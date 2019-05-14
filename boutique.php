<?php
session_start();

include './PHP/bdd.php';
include './PHP/security.php';
include './PHP/users.php';

verification($_SESSION['id']);

$link = linkBdd();

$userinfo = infoUsers($_SESSION['id'], $link);
$ball = mysqli_query($link,"SELECT * FROM objets WHERE Num_TypeObjet = 1");
$pvpp = mysqli_query($link,"SELECT * FROM objets WHERE Num_TypeObjet = 2 AND Prix_Objet != 0");
$evo = mysqli_query($link,"SELECT * FROM objets WHERE Num_TypeObjet = 3 AND Prix_Objet != 0");
$sessid = intval($_SESSION['id']);
$requser = mysqli_query($link,'SELECT * FROM membres WHERE id = '.$sessid);
$userinfo = mysqli_fetch_array($requser);


?>


<!DOCTYPE html>
<html lang="fr" dir="ltr">
<head>
  <meta charset="utf-8">
  <title>Boutique</title>
  <link rel="stylesheet" href="./CSS/boutique.css">
  <link  href="./Images/Fond/Icone.png" rel="icon"/>
</head>
<body>
  <div id="argent">
    <p class='argent'>PokeDollar : <?php echo $userinfo['Argent']; ?> ₽</p>
  </div>
  <div id="achat">
    <button id="acheter">Acheter</button>
  </div>
  <div id="liste">
    <div id="header">
      <div id="ball"><p>Balls</p></div>
      <div id="pvpp"><p>PV/PP</p></div>
      <div id="evo"><p>&Eacute;volution</p></div>
      <div id="croix"><p>X</p></div>
    </div>
    <div id="body">
      <div class="ball">
        <?php
        while($ligne = mysqli_fetch_assoc($ball)){
          $num = $ligne['Num_Objet'];
          $max = floor($userinfo['Argent']/$ligne['Prix_Objet']);
          if ($userinfo['Argent'] < $ligne['Prix_Objet']){
            $max = 0;
          }
          if($max>999){
            $max=999;
          }
          echo "<div id='vendre'>";
          echo $ligne['Img_Objet'];
          echo "<p id='nomObj'>".$ligne['Nom_Objet']."</p>";
          echo "<p id='prix'>".$ligne['Prix_Objet']." ₽</p>";
          echo "<div class='desc'><p id='desc'>".$ligne['Description_Objet']."</p></div>";
          echo "<div class='achat'>";
          echo "<input type='number' id='input-achat' placeholder='Qtte' min='0' max=". $max .">";
          echo "<input type='button' value='Acheter' onclick='requete($num)'>";
          echo "</div>";
          echo "</div>";
        }
        ?>
      </div>
      <div class="pvpp">
        <?php
        while($ligne = mysqli_fetch_assoc($pvpp)){
          $num = $ligne['Num_Objet'];
          $max = floor($userinfo['Argent']/$ligne['Prix_Objet']);
          if ($userinfo['Argent'] < $ligne['Prix_Objet']){
            $max = 0;
          }
          if($max>999){
            $max=999;
          }
          echo "<div id='vendre'>";
          echo $ligne['Img_Objet'];
          echo "<p id='nomObj'>".$ligne['Nom_Objet']."</p>";
          echo "<p id='prix'>".$ligne['Prix_Objet']." ₽</p>";
          echo "<div class='desc'><p id='desc'>".$ligne['Description_Objet']."</p></div>";
          echo "<div class='achat'>";
          echo "<input type='number' id='input-achat' placeholder='Qtte' min='0' max=". $max .">";
          echo "<input type='button' value='Acheter' onclick='requete($num)'>";
          echo "</div>";
          echo "</div>";
        }
        ?>
      </div>
      <div class="evo">
        <?php
        while($ligne = mysqli_fetch_assoc($evo)){
          $num = $ligne['Num_Objet'];
          $max = floor($userinfo['Argent']/$ligne['Prix_Objet']);
          if ($userinfo['Argent'] < $ligne['Prix_Objet']){
            $max = 0;
          }
          if($max>999){
            $max=999;
          }
          echo "<div id='vendre'>";
          echo $ligne['Img_Objet'];
          echo "<p id='nomObj'>".$ligne['Nom_Objet']."</p>";
          echo "<p id='prix'>".$ligne['Prix_Objet']." ₽</p>";
          echo "<div class='desc'><p id='desc'>".$ligne['Description_Objet']."</p></div>";
          echo "<div class='achat'>";
          echo "<input type='number' id='input-achat' placeholder='Qtte' min='0' max=". $max .">";
          echo "<input type='button' value='Acheter' onclick='requete($num)'>";
          echo "</div>";
          echo "</div>";
        }
        ?>
      </div>
    </div>
  </div>
  <div id="return">
    <button id="retour">Retour</button>
  </div>
  <?php
  if (isset($_SESSION['id']) AND $userinfo['id'] == $_SESSION['id'])
  {
    ?>
    <!-- <a href="#">Editer mon profil</a><br> -->

    <a href="deconnexion.php">Se déconnecter</a>

    <?php
  }
  ?>
  <script type="text/javascript" src="./JS/boutique.js"></script>
</body>
</html>
