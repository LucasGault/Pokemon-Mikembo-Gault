<?php
session_start();

$link = $link = mysqli_connect("dwarves.iut-fbleau.fr","mikembo","mikembo","mikembo");

if (isset($_SESSION['id']))
{

?>

<!DOCTYPE html>
<html>
<head>
	<title>Equipe</title>
</head>
<body>
	
	<button id="attraper" type="button" name="attraper">Attraper</button>

	<script type="text/javascript">
		
		var attraper = document.getElementById('attraper');

		attraper.onclick = function()
		{
			<?php 

			//requete pour insérer un tuple de la table pokemon

			?>
			document.location.href="attraper.php";
		}

	</script>

</body>
</html>



<?php

}
else
{
	header("Location: connexion.php");
}

?>