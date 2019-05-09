var retirer = document.getElementById('retirer');
var stocker = document.getElementById('stocker');
var retour = document.getElementById('Retour');

var i = true;
retirer.onclick = function(){
  if (i) {
    document.querySelector("#movere").style.visibility = "visible";
    document.querySelector("#movest").style.visibility = "hidden";
  }else{
    document.querySelector("#movere").style.visibility = "hidden";
  }
  i = !i;
}
var i2 = true;
stocker.onclick = function(){
  if (i2) {
    document.querySelector("#movest").style.visibility = "visible";
    document.querySelector("#movere").style.visibility = "hidden";
  }else{
    document.querySelector("#movest").style.visibility = "hidden";
  }
  i2 = !i2;
}
document.querySelector("").addEventListener("click", () => {
  document.location.href="profil.php";
});
retour.onclick = function()
{
  document.location.href="profil.php";
}
