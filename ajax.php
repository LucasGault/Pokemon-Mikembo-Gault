<?php

include 'pokemons.php';

// reafficher l'equipe 
if(isset($_GET['nume']))
{
	session_start();
	$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

	$reqequipe = 'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'] . ' ORDER BY Place_Equipe';
    $equipe = mysqli_query($link, $reqequipe);

    while($ligne = mysqli_fetch_assoc($equipe)){
        echo "<div id='equipe'>";
        echo $ligne['Miniature'];
        echo "<p id=nom>".$ligne['Nom']."</p>";
        echo "<p id=level>N. ".$ligne['Niveau']."</p>";
        echo "<p id=pv>".$ligne['PV_restant']."/".$ligne['PV']."</p>";
        echo "</div>";
    }

}

// reafficher le pc
if ( isset($_GET['nump']))
{
    session_start();
	$link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

    $reqpc = 'SELECT * FROM pc INNER JOIN pokemon	WHERE pc.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'];
    $pc = mysqli_query($link, $reqpc);

    while($ligne = mysqli_fetch_assoc($pc)){
        echo $ligne['Miniature'];
    }
    
}

// reafficher la selection de stockage 
if ( isset($_GET['movest']))
{
    session_start();
    $link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

    $reqequipe = 'SELECT * FROM equipe INNER JOIN pokemon	WHERE equipe.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'];
    $equipe = mysqli_query($link, $reqequipe);
    
    echo '<div class="stocker">';
        while($ligne = mysqli_fetch_assoc($equipe)){
            $numequipe1 = $ligne['Id_equipe'];
            echo '<p>' . $ligne['Nom'] . '</p>';
            echo "<input type='submit' id='input-stocker' value='Stocker' onclick='requeteSt($numequipe1)'>";
        }
    echo '</div>';
}

// reafficher la selection de retrait
if ( isset($_GET['movere']))
{
    session_start();
    $link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

    $reqpc = 'SELECT * FROM pc INNER JOIN pokemon	WHERE pc.Numero = pokemon.Numero AND id_membre = '. $_SESSION['id'];
    $pc = mysqli_query($link, $reqpc);
    
    echo '<div class="retirer">';
        while($ligne = mysqli_fetch_assoc($pc)){
            $numpc1 = $ligne['Id_PC'];
            echo $ligne['Miniature'];
            echo "<input type='submit' id='input-retirer' value='Retirer' onclick='requeteRe($numpc1)'>";
        }
    echo '</div>';
}

if(isset($_GET['num_Objet']) && ($_GET['num_pokemon'])){
	echo $_GET['num_Objet']."  ".$_GET['num_pokemon'];
}

?>