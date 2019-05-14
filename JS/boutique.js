var retour = document.getElementById('retour');
retour.onclick = function(){
  document.location.href='profil.php';
}

var acheter = document.getElementById('acheter');
acheter.onclick = function(){
  document.querySelector("#liste").style.visibility = "visible";
  document.querySelector(".ball").style.visibility = "visible";

}
document.querySelector("#croix").addEventListener("click", () => {
  document.querySelector("#liste").style.visibility = "hidden";
  document.querySelector(".ball").style.visibility = "hidden";
  document.querySelector(".pvpp").style.visibility = "hidden";
  document.querySelector(".evo").style.visibility = "hidden";
}
);
document.querySelector("#ball").addEventListener("click", () => {
  document.querySelector(".ball").style.visibility = "visible";
  document.querySelector(".pvpp").style.visibility = "hidden";
  document.querySelector(".evo").style.visibility = "hidden";
  document.querySelector("#ball").style.color = "white";
  document.querySelector("#pvpp").style.color = "black";
  document.querySelector("#evo").style.color = "black";
}
);
document.querySelector("#pvpp").addEventListener("click", () => {
  document.querySelector(".ball").style.visibility = "hidden";
  document.querySelector(".pvpp").style.visibility = "visible";
  document.querySelector(".evo").style.visibility = "hidden";
  document.querySelector("#ball").style.color = "black";
  document.querySelector("#pvpp").style.color = "white";
  document.querySelector("#evo").style.color = "black";
}
);
document.querySelector("#evo").addEventListener("click", () => {
  document.querySelector(".ball").style.visibility = "hidden";
  document.querySelector(".pvpp").style.visibility = "hidden";
  document.querySelector(".evo").style.visibility = "visible";
  document.querySelector("#ball").style.color = "black";
  document.querySelector("#pvpp").style.color = "black";
  document.querySelector("#evo").style.color = "white";
}
);


function requete(num_Objet) {
  var qtte = document.getElementById("input-achat").value;
  var xhr = new XMLHttpRequest();
  xhr.open('GET', 'acheter.php?qtte='+qtte+'&num='+num_Objet, true);
  xhr.addEventListener('readystatechange', function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      // alert(xhr.responseText);
      actualiser_argent();
    }
  });
  xhr.send();
}
function actualiser_argent() {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', './PHP/pokemons.php?argent', true);
  xhr.addEventListener('readystatechange', function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      document.querySelector('.argent').innerHTML = xhr.responseText;
    }
  });
  xhr.send();
}


var qtteARecuperer = document.getElementById("input-achat").value;
