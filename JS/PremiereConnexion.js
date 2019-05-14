var i = true;
document.querySelector(".cara").addEventListener("click", () => {
  if (i) {
    document.querySelector("#carapuce").style.visibility = "visible";
    document.querySelector("#salameche").style.visibility = "hidden";
    document.querySelector("#bulb").style.visibility = "hidden";
  }
  else{
    document.querySelector("#carapuce").style.visibility = "hidden";
  }
  i = !i;
}
);
var i2 = true;
document.querySelector(".bulb").addEventListener("click", () => {
  if (i2) {
    document.querySelector("#carapuce").style.visibility = "hidden";
    document.querySelector("#salameche").style.visibility = "hidden";
    document.querySelector("#bulb").style.visibility = "visible";
  }
  else{
    document.querySelector("#bulb").style.visibility = "hidden";
  }
  i2 = !i2;
}
);
var i3 = true;
document.querySelector(".sala").addEventListener("click", () => {
  if (i3) {
    document.querySelector("#carapuce").style.visibility = "hidden";
    document.querySelector("#salameche").style.visibility = "visible";
    document.querySelector("#bulb").style.visibility = "hidden";
  }
  else{
    document.querySelector("#salameche").style.visibility = "hidden";
  }
  i3 = !i3;
}
);
