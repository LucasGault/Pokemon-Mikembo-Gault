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

function requeteSt(num_equipe)
{
  var xhr = new XMLHttpRequest();
  xhr.open('GET', 'stocker.php?num='+num_equipe, true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      actualiser_equipe();
      actualiser_movest();
      actualiser_movere();
      actualiser_pc();
    }
  });
  xhr.send();
}

function requeteRe(num_pc)
{
  var xhr = new XMLHttpRequest();
  xhr.open('GET', 'retirer.php?num='+num_pc, true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      actualiser_equipe();
      actualiser_movere();
      actualiser_movest();
      actualiser_pc();
    }
  });
  xhr.send();
}

function deplacerH(num_team)
{
  var xhr = new XMLHttpRequest();
  xhr.open('GET', './PHP/ajax.php?numth=' + num_team, true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      actualiser_equipe();
      actualiser_movest();
    }
  });

  xhr.send();
}

function deplacerB(num_team)
{
  var xhr = new XMLHttpRequest();
  xhr.open('GET', './PHP/ajax.php?numtb=' + num_team, true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      actualiser_equipe();
      actualiser_movest();
    }
  });

  xhr.send();
}

function actualiser_equipe()                                          // fonction pour actualiser l'equipe
{
  var xhr = new XMLHttpRequest();
  var team = document.getElementById("team");

  xhr.open('GET', './PHP/ajax.php?nume', true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      team.innerHTML = xhr.response;
    }
  });
  xhr.send();
}

function actualiser_pc()                                              // fonction pour actualiser le pc
{
  var xhr = new XMLHttpRequest();
  var pc = document.getElementById("imgpc");

  xhr.open('GET', './PHP/ajax.php?nump', true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      pc.innerHTML = xhr.response;

    }
  });
  xhr.send();
}

function actualiser_movest()                                          // fonction pour actualiser la selection de stockage
{
  var xhr = new XMLHttpRequest();
  var movest = document.getElementById("movest");

  xhr.open('GET', './PHP/ajax.php?movest', true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      movest.innerHTML = xhr.response;

    }
  });
  xhr.send();
}

function actualiser_movere()                                          // fonction pour actualiser la selection de retrait
{
  var xhr = new XMLHttpRequest();
  var movere = document.getElementById("movere");

  xhr.open('GET', './PHP/ajax.php?movere', true);
  xhr.addEventListener('readystatechange', function()
  {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200)
    {
      movere.innerHTML = xhr.response;
    }
  });
  xhr.send();
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
retour.onclick = function()
{
  document.location.href="profil.php";
}
