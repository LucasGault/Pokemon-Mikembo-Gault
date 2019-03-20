 <!DOCTYPE html>
 <html lang="fr">
   <head>
     <meta charset="utf-8">
     <title>Pokemon</title>
   	<link rel="stylesheet" href="pokemon.css">
   </head>
   <body>
     <!-- <form action="addPokemon.php" method="post">
       <input type="text" name="Miniature" value="<img src='./Pokemon/.png'>" required>
       <input type="text" name="Nom" placeholder="Nom" required>
       <input type="text" name="type" placeholder="type" required>
       <input type="submit" name="Add" value="Add">
     </form> -->
     <br>
     <?php
     //$bdd = new PDO('mysql:host=localhost;dbname=ppokemon;charset=utf8', 'root', '');
     $connexion = mysqli_connect("127.0.0.1","root","","ppokemon");
     if(!$connexion){
       die('Erreur de connexion (' . mysqli_connect_errno() . ') '
      . mysqli_connect_error());
     }

     // if(isset($_POST["Miniature"]) && isset($_POST["Nom"]) && isset($_POST["Type"])) {
     //   $insert = "INSERT INTO pokemon (Miniature, Nom, Type)
     //    VALUES ('".$_POST["Miniature"]."','".$_POST["Nom"]."','".$_POST["Type"]."')";
     //   "INSERT INTO Pokemon VALUES ("."'".$_POST['Miniature']."'".","."'".$_POST['Nom']."'".","."'".$_POST['Type']."'".")";
     //   mysqli_query($connexion,$query);
     //
     //   $resinsert = mysqli_query($connexion,$insert);
     // }
     $resreq = mysqli_query($connexion,"SELECT Numero,Miniature,pokemon.Nom,Type1,Type2,Evolution FROM pokemon ");
     echo "<div id='main'>";
     echo "<table border='1' style='border-collapse: collapse' id='pokemon' >";
     echo "<tr BGCOLOR='grey'><th colspan='6'>Pokemon</th></tr>";
     echo "<tr><th>Numero</th>
               <th BGCOLOR=' #d9d9d9'>Miniature</th>
               <th>Nom</th>
               <th colspan='2'>Type</th>
               <th>Evolution</th>
            </tr>";
       while($ligne = mysqli_fetch_assoc($resreq)){

         echo "<tr>";
         echo "<th>".$ligne['Numero']."</th>";
         echo "<th BGCOLOR=' #d9d9d9'>".$ligne['Miniature']."</th>";
         echo "<th>".$ligne['Nom']."</th>";
         echo "<th>".$ligne['Type1']."</th>";
         echo "<th>".$ligne['Type2']."</th>";
         echo "<th>".$ligne['Evolution']."</th>";
         echo "</tr>";
       }
       echo "</table>";

       $resreq = mysqli_query($connexion,"SELECT * FROM type ");
       echo "<table style='border-collapse: collapse' border='1' id='Type'>";
       echo "<tr BGCOLOR='grey'><th colspan='2'>Type</th></tr>";
       echo "<tr ><th>NumeroType</th>
                 <th BGCOLOR=' #d9d9d9'>Type</th>
              </tr>";
         while($ligne = mysqli_fetch_assoc($resreq)){

           echo "<tr>";
           echo "<th>".$ligne['Num_Type']."</th>";
           echo "<th BGCOLOR=' #d9d9d9'>".$ligne['Nom_Type']."</th>";
           echo "</tr>";
         }
         echo "</table>";
         echo "</div>";
      ?>
   </body>
 </html>
