
window.onload = function(){
    var box = document.getElementById("naozs");
    var son = box.children;
    var date = new Date();
    var att = ["星期天","星期一","星期二","星期三","星期四","星期五","星期六"];
    son[0].innerHTML = date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日"
        +att[date.getDay()];
    function clock(){
        var date = new Date();
        (date.getSeconds()+1)<11?son[1].innerHTML = "0"+(date.getSeconds()):son[1].innerHTML = (date.getSeconds());
    }
    var time = setInterval(clock,100);
}