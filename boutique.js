var retour = document.getElementById('retour');
retour.onclick = function(){
  document.location.href='profil.php';
}

var acheter = document.getElementById('acheter');
acheter.onclick = function(){
  document.querySelector("#liste").style.visibility = "visible";
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
}
);
document.querySelector("#pvpp").addEventListener("click", () => {
  document.querySelector(".ball").style.visibility = "hidden";
  document.querySelector(".pvpp").style.visibility = "visible";
  document.querySelector(".evo").style.visibility = "hidden";
}
);
document.querySelector("#evo").addEventListener("click", () => {
  document.querySelector(".ball").style.visibility = "hidden";
  document.querySelector(".pvpp").style.visibility = "hidden";
  document.querySelector(".evo").style.visibility = "visible";
}
);


function requete(qtte,num_Objet) {
  var qtte = document.getElementById("input-achat").value;
  var xhr = new XMLHttpRequest();
  xhr.open("GET", "./achat.php?qtte="+qtte, true);
  // xhr.onreadystatechange = function() {
  //   console.log(this.responseURL);
  //   if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
  //     alert(this.responseText);
  //   } else if (this.readyState == 4 && this.status == 404) {
  //     alert('Erreur 404 :/');
  //   }
  // };

  xhr.send();
}



  var qtteARecuperer = document.getElementById("input-achat").value;
