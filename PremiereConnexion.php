<!DOCTYPE html>
<html lang="fr">
<head>
  <link  href="./Images/Fond/Icone.png" rel="icon"/>
  <link  rel="stylesheet" href="./CSS/PremiereConnexion.css" />
  <meta charset="utf-8">
  <title>Starter</title>
</head>
<body>
  <div id="divProf">
    <img id="text" src="./Images/Fond/choix.png">
    <img id="prof" src="./Images/Fond/Professeur_Chen.png"/>
  </div>
  <div class="pokemon">
    <div id="divCara">
      <img id="Pokemon" class="cara" src="./Images/Pokemon/Carapuce.png"/>
    </div>
    <div id="divBulb">
      <img id="Pokemon" class="bulb" src="./Images/Pokemon/Bulbizarre.png"/>
    </div>
    <div id="divSal">
      <img id="Pokemon" class="sala" src="./Images/Pokemon/Salameche.png"/>
    </div>
  </div>
  <div id="choix">
    <form id="carapuce" method="post" action="carapuce.php">
      <input type="submit" value="Choisir Carapuce">
    </form>
    <form id="bulb" method="post" action="bulb.php">
      <input type="submit" value="Choisir Bulbizarre">
    </form>
    <form id="salameche" method="post" action="salameche.php">
      <input type="submit" value="Choisir Salamèche">
    </form>
  </div>
  <script type="text/javascript" src="./JS/PremiereConnexion.js" ></script>
</body>
</html>
