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

var butball = document.getElementById('butball');
var allball = document.querySelectorAll(".ball");
butball.onclick = function(){
  document.querySelector("#sac").style.visibility = "hidden";
  document.querySelector("#ball").style.visibility = "visible";
  document.querySelector(".retourball").style.visibility = "visible";
  for (i = 0;i < allball.length; i++){
    allball[i].style.visibility = "visible";
  }
}

var butsoins = document.getElementById('butsoins');
var allsoins = document.querySelectorAll(".soins");
butsoins.onclick = function(){
  document.querySelector("#sac").style.visibility = "hidden";
  document.querySelector("#soins").style.visibility = "visible";
  for (i = 0;i < allball.length; i++){
    allsoins[i].style.visibility = "visible";
  }
  document.querySelector(".retoursoins").style.visibility = "visible";
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


fuite.onclick = function(){
  document.location.href='profil.php';
}
var desc = document.querySelectorAll(".desc");
var descsoins = document.querySelectorAll(".descsoins");

function utilisation_Objet(num_Objet) {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', 'attraper.php?num_Objet='+num_Objet, true);
  xhr.addEventListener('readystatechange', function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
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
