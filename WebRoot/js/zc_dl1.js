function $(a){return document.getElementById(a);}

$("zc").onclick = function(){
    $("mask").style.display = "block";
    $("my_zc").style.display = "block";
}
$("close_all").onclick = function(){
    $("mask").style.display = "none";
    $("my_zc").style.display = "none";
}
$("an_dl").onclick = function(){
    $("mask").style.display = "block";
    $("my_dl").style.display = "block";
}
$("close_all_login").onclick = function(){
    $("mask").style.display = "none";
    $("my_dl").style.display = "none";
}
$("sjkhd").onmouseover = function(){
    $("mask").style.display = "block";
    $("ewmcx").style.display = "block";
}
$("sjkhd").onmouseout = function(){
    $("mask").style.display = "none";
    $("ewmcx").style.display = "none";
}







