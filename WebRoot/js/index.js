
window.onload = function(){
    var box = document.getElementById("naozs");
    var son = box.children;
    function clock(){
        var date = new Date();
        var att = ["星期天","星期一","星期二","星期三","星期四","星期五","星期六"];
        son[0].innerHTML = date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日"
            +att[date.getDay()];
        son[1].innerHTML = date.getHours()+":"+date.getMinutes();
        (date.getMinutes()+1)<11?son[1].innerHTML =date.getHours()+":0"+date.getMinutes():son[1].innerHTML = date.getHours()+":"+date.getMinutes();;
        (date.getSeconds()+1)<11?son[2].innerHTML = "0"+(date.getSeconds()):son[2].innerHTML = (date.getSeconds());
    }
    var time = setInterval(clock,100);
    function $(a){return document.getElementById(a);}
    function dispnone(b){
        $(b).style.display = "none";
    }
    setTimeout(closeimg,5000);
    function closeimg(){
        dispnone("zdggid");
    }
    $("close_gugao").onclick = function(){
        dispnone("zdggid");
    }
    var att = ["我们都是广东人，一起运“动”起来呗！","在上海这忙碌的环境中我们应该“动”起来！","让北京充满生机，让我们尽情的运“动”吧！","我爱天津，更爱在天津运动！"];
    function $(a){return document.getElementById(a);}
    $("xila").onchange = function(){
        $("content").innerHTML = att[this.value];
    }
    function $(a){return document.getElementById(a);}
    $("boxhd").onmouseover = function(){
        $("arrhd").style.display = "block";
    }
    $("boxhd").onmouseout = function(){
        $("arrhd").style.display = "none";
    }
    var target = 0,leader = 0;
    $("lefthd").onclick = function(){
        target += 270;
    }
    $("righthd").onclick = function(){
        target -= 270;
    }
    setInterval(function(){
        if(target >= 0){
            target = 0;
        }
        else if(target<=-1890){
            target = -1890;
        }
        leader = leader + (target -leader)/10;
        $("imgshd").style.left = leader + "px";
    },30)


}