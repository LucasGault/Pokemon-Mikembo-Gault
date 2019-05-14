var equipe = document.getElementById('equipe');
var chasser = document.getElementById('chasser');
var boutique = document.getElementById('boutique');
var combat = document.getElementById('combat');

equipe.onclick = function()
{
  document.location.href="equipe.php";
}
chasser.onclick = function()
{
  document.location.href="chasser.php";
}
boutique.onclick = function()
{
  document.location.href="boutique.php";
}
combat.onclick = function()
{
  document.location.href="combat.php";
}

document.querySelector("#ball").addEventListener("click", () => {
    document.querySelector(".ball").style.visibility = "visible";
    document.querySelector(".pvpp").style.visibility = "hidden";
    document.querySelector(".evo").style.visibility = "hidden";
    document.querySelector("#ball").style.color = "rgb(50, 154, 230)";
    document.querySelector("#pvpp").style.color = "rgb(204, 20, 20)";
    document.querySelector("#evo").style.color = "rgb(204, 20, 20)";
}
);

document.querySelector("#pvpp").addEventListener("click", () => {
    document.querySelector(".ball").style.visibility = "hidden";
    document.querySelector(".pvpp").style.visibility = "visible";
    document.querySelector(".evo").style.visibility = "hidden";
    document.querySelector("#ball").style.color = "rgb(204, 20, 20)";
    document.querySelector("#pvpp").style.color = "rgb(50, 154, 230)";
    document.querySelector("#evo").style.color = "rgb(204, 20, 20)";
}
);

document.querySelector("#evo").addEventListener("click", () => {
    document.querySelector(".ball").style.visibility = "hidden";
    document.querySelector(".pvpp").style.visibility = "hidden";
    document.querySelector(".evo").style.visibility = "visible";
    document.querySelector("#ball").style.color = "rgb(204, 20, 20)";
    document.querySelector("#pvpp").style.color = "rgb(204, 20, 20)";
    document.querySelector("#evo").style.color = "rgb(50, 154, 230)";
}
);
var vendresoins = document.querySelectorAll("#vendresoins");
var i;
var j = true;
for (i = 0; i < vendresoins.length; i++) {
  vendresoins[i].addEventListener("click", () => {
    if (j) {
      document.querySelector("#equipepoke").style.visibility = "visible";
    }else {
      document.querySelector("#equipepoke").style.visibility = "hidden";
    }
    j = !j;
  }
  );
}


function utilisation_Objet_Soins(num_Objet,num_pokemon) {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', './PHP/ajax.php?num_Objet='+num_Objet+'&num_pokemon='+num_pokemon, true);
  xhr.addEventListener('readystatechange', function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {

    }
  });
  xhr.send();
}
