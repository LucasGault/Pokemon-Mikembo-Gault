var attaque = document.getElementById('butattaque');
var butsac = document.getElementById('butsac');
var pokemon = document.getElementById('butpokemon');
var fuite = document.getElementById('butfuite');

var sac = document.getElementById('sac');
var ball = document.getElementById('ball');
var soins = document.getElementById('soins');

var retouratt = document.querySelector('.retouratt');
var retoursac = document.querySelector('.retoursac');
var retourball = document.querySelector('.retourball');
var retoursoins = document.querySelector('.retoursoins');
var retourpoke = document.querySelector('.retourpoke');
var i;
var j;

var butball = document.getElementById('butball');
var allball = document.querySelectorAll(".ball");
var butsoins = document.getElementById('butsoins');
var allsoins = document.querySelectorAll(".soins");

var desc = document.querySelectorAll(".desc");
var descsoins = document.querySelectorAll(".descsoins");

function utilisation_Objet(num_Objet) {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', 'attraper.php?num_Objet='+num_Objet, true);
  xhr.addEventListener('readystatechange', function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      actualiser_ball_qtte();
      var capture = xhr.response;
      if (capture == 1){
        alert("Pokemon capturé !");
        location.href = "profil.php";
      }
      for (i = 0;i < desc.length; i++){
        desc[i].style.visibility = "hidden";
      }
      for (i = 0;i < descsoins.length; i++){
        descsoins[i].style.visibility = "hidden";
      }
      document.querySelector("#divcommande").style.visibility = "visible";
      document.querySelector("#soins").style.visibility = "hidden";

    }
  });
  xhr.send();
}

function actualiser_ball_qtte(){
  var xhr = new XMLHttpRequest();
  var ball = document.getElementById("ball");

  xhr.open('GET', './PHP/ajax.php?ballqtte', true);
  xhr.addEventListener('readystatechange', function(){
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200){
      ball.innerHTML = xhr.response;
      ball.style.visibility = "hidden";

      document.querySelector("#ball1").addEventListener("click", () => {
        document.querySelector("#ball1").style.visibility = "hidden";
        document.querySelector("#ball2").style.visibility = "hidden";
        document.querySelector("#ball3").style.visibility = "hidden";
        document.querySelector("#desc1").style.visibility = "visible";
        document.querySelector(".retourball").style.visibility = "hidden";
      }
    );
    document.querySelector('.retourball').onclick = function(){
      document.querySelector('.retourball').style.visibility = "hidden";
      document.querySelector("#sac").style.visibility = "visible";
      document.querySelector("#ball1").style.visibility = "hidden";
      document.querySelector("#ball2").style.visibility = "hidden";
      document.querySelector("#ball3").style.visibility = "hidden";
    }
    document.querySelector('.retourdescball1').onclick = function(){
      document.querySelector("#ball1").style.visibility = "visible";
      document.querySelector("#ball2").style.visibility = "visible";
      document.querySelector("#ball3").style.visibility = "visible";
      document.querySelector(".retourball").style.visibility = "visible";
      document.querySelector("#desc1").style.visibility = "hidden";
    }
  }
});
xhr.send();
}

function attaque_boom(numAttaque,puissance_Attaque) {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', './PHP/ajax.php?numAttaque='+numAttaque+'&puissance_Attaque='+puissance_Attaque, true);
  xhr.addEventListener('readystatechange', function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      actualiser_pokesauv();
      var vie = xhr.response;
      if (vie == 0){
        suppr_poke_sauvage();
        alert("Pokemon KO");
        location.href = "profil.php";
      }
      document.querySelector("#divcommande").style.visibility = "visible";
      document.querySelector("#attaque").style.visibility = "hidden";
    }
  });
  xhr.send();
}


function actualiser_pokesauv() {
  var xhr = new XMLHttpRequest();
  var pvpokemonsauvag = document.getElementById("pvpokesauvage");
  xhr.open('GET', './PHP/ajax.php?pvpokesauv', true);
  xhr.addEventListener('readystatechange', function(){
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200){
      pvpokemonsauvag.innerHTML = xhr.response;
    }
  });
  xhr.send();
}
function suppr_poke_sauvage() {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', './PHP/ajax.php?suppr', true);
  xhr.addEventListener('readystatechange', function(){
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200){
      location.href='profil.php';
    }
  });
  xhr.send();
}
function changer_de_pokemon(numpokemon) {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', './PHP/ajax.php?numpokemon='+numpokemon, true);
  xhr.addEventListener('readystatechange', function(){
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200){
      actualiser_pokemoneq();
      actualiser_pvpokemoneq();
      document.querySelector("#divcommande").style.visibility = "visible";
      document.querySelector("#pokemon").style.visibility = "hidden";
    }
  });
  xhr.send();
}
function actualiser_pokemoneq(){
  var xhr = new XMLHttpRequest();
  var pokemoneq = document.getElementById("pokemoneq");
  xhr.open('GET', './PHP/ajax.php?pokemoneq', true);
  xhr.addEventListener('readystatechange', function(){
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200){
      pokemoneq.innerHTML = xhr.response;
    }
  });
  xhr.send();
}
function actualiser_pvpokemoneq(){
  var xhr = new XMLHttpRequest();
  var pvpokeeq = document.getElementById("pvpokeeq");
  xhr.open('GET', './PHP/ajax.php?pvpokeeq', true);
  xhr.addEventListener('readystatechange', function(){
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200){
      pvpokeeq.innerHTML = xhr.response;
    }
  });
  xhr.send();
}
attaque.onclick = function(){
  document.querySelector("#divcommande").style.visibility = "hidden";
  document.querySelector("#attaque").style.visibility = "visible";
}
butsac.onclick = function(){
  document.querySelector("#divcommande").style.visibility = "hidden";
  document.querySelector("#sac").style.visibility = "visible";
}
pokemon.onclick = function(){
  document.querySelector("#divcommande").style.visibility = "hidden";
  document.querySelector("#pokemon").style.visibility = "visible";
}


butball.onclick = function(){
  document.querySelector("#sac").style.visibility = "hidden";
  document.querySelector("#ball").style.visibility = "visible";
  document.querySelector(".retourball").style.visibility = "visible";
  for (j = 0;j < allball.length; j++){
    allball[j].style.visibility = "visible";
  }
}


butsoins.onclick = function(){
  document.querySelector("#sac").style.visibility = "hidden";
  document.querySelector("#soins").style.visibility = "visible";
  for (i = 0;i < allball.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
}

retouratt.onclick = function(){
  document.querySelector("#attaque").style.visibility = "hidden";
  document.querySelector("#divcommande").style.visibility = "visible";
}
retoursac.onclick = function(){
  document.querySelector("#sac").style.visibility = "hidden";
  document.querySelector("#divcommande").style.visibility = "visible";
}
retourball.onclick = function(){
  document.querySelector("#ball").style.visibility = "hidden";
  document.querySelector(".retourball").style.visibility = "hidden";
  document.querySelector("#sac").style.visibility = "visible";
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "hidden";
  }
}
retoursoins.onclick = function(){
  document.querySelector("#soins").style.visibility = "hidden";
  document.querySelector(".retoursoins").style.visibility = "hidden";
  document.querySelector("#sac").style.visibility = "visible";
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
}
retourpoke.onclick = function(){
  document.querySelector("#pokemon").style.visibility = "hidden";
  document.querySelector("#divcommande").style.visibility = "visible";
}

document.querySelector("#ball1").addEventListener("click", () => {
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "hidden";
  }
  document.querySelector("#desc1").style.visibility = "visible";
  document.querySelector(".retourball").style.visibility = "hidden";
}
);

document.querySelector("#ball2").addEventListener("click", () => {
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "hidden";
  }
  document.querySelector("#desc2").style.visibility = "visible";
  document.querySelector(".retourball").style.visibility = "hidden";
}
);

document.querySelector("#ball3").addEventListener("click", () => {
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "hidden";
  }
  document.querySelector("#desc3").style.visibility = "visible";
  document.querySelector(".retourball").style.visibility = "hidden";
}
);

document.querySelector("#soins1").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins1").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins2").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins2").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins3").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins3").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins4").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins4").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins5").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins5").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins6").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins6").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins7").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins7").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins8").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins8").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins9").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins9").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins10").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins10").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins11").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins11").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins12").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins12").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins13").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins13").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins14").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins14").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins15").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins15").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins16").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins16").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins17").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins17").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins18").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins18").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins19").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins19").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);
document.querySelector("#soins20").addEventListener("click", () => {
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "hidden";
  }
  document.querySelector("#descsoins20").style.visibility = "visible";
  document.querySelector(".retoursoins").style.visibility = "hidden";
}
);





document.querySelector('.retourdescball1').onclick = function(){
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "visible";
  }
  document.querySelector(".retourball").style.visibility = "visible";
  document.querySelector("#desc1").style.visibility = "hidden";
}
document.querySelector('.retourdescball2').onclick = function(){
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "visible";
  }
  document.querySelector(".retourball").style.visibility = "visible";
  document.querySelector("#desc2").style.visibility = "hidden";
}
document.querySelector('.retourdescball3').onclick = function(){
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "visible";
  }
  document.querySelector(".retourball").style.visibility = "visible";
  document.querySelector("#desc3").style.visibility = "hidden";
}

document.querySelector('.retourdescsoins1').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins1").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins2').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins2").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins3').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins3").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins4').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins4").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins5').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins5").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins6').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins6").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins7').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins7").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins8').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins8").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins9').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins9").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins10').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins10").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins11').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins11").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins12').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins12").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins13').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins13").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins14').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins14").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins15').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins15").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins16').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins16").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins17').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins17").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins18').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins18").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins19').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins19").style.visibility = "hidden";
}
document.querySelector('.retourdescsoins20').onclick = function(){
  for (i = 0;i < allsoins.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
  document.querySelector("#descsoins20").style.visibility = "hidden";
}
