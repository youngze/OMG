window.onload = function() {
    function $(a) {
        return document.getElementById(a);
    }

    var son = $("lda").children;

    $("one").onmouseover = function () {
        for (var i = 0; i < son.length; i++) {
            son[i].className = "";
        }
        son[0].className = "show";
    }
    $("two").onmouseover = function () {
        for (var i = 0; i < son.length; i++) {
            son[i].className = "";
        }
        son[1].className = "show";
    }
    $("three").onmouseover = function () {
        for (var i = 0; i < son.length; i++) {
            son[i].className = "";
        }
        son[2].className = "show";
    }
    var data = ['半折优惠券', '羽毛球一个', '羽毛拍一对', '谢谢参与', '矿泉水一瓶'];
    timer1 = null;
    var flag = 0;
    $("play").onclick = playFun;
    $("stop").onclick = stopFun;

    function playFun() {
        clearInterval(timer1);
        timer1 = setInterval(function () {
            var random = Math.floor(Math.random() * data.length);
            $("title").innerHTML = data[random];
        }, 50);
        $("play").style.background = "#999";

    }

    function stopFun() {
        clearInterval(timer1);
        $("play").style.background = "#036";
    }

    //当点击抽奖图片弹出抽奖背景，然后可以开始抽奖
    $("four").onclick = function () {
        $("mask").style.display = "block";
        $("cjly").className = "show";
    }

    //可以评价
    var btn = document.getElementById("button");
    var text = document.getElementsByTagName("textarea")[0];
    var ul = document.createElement("ul");
    btn.parentNode.appendChild(ul);
    btn.onclick = function () {
        if (text.value == 0) {
            alert("内容为空不能上传呀");
            return;
        }
        var date = new Date();
        var att = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
        var time = date.getFullYear() + "年" + (date.getMonth() + 1) + "月" + date.getDate() + "日"
            + att[date.getDay()];
        var li = document.createElement("li");
        li.innerHTML = text.value + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + "<i>" + time + "</i>";
        text.value = "";
        var uson = ul.children;
        if (uson.length == 0) {
            ul.appendChild(li);
        }
        else {
            ul.insertBefore(li, uson[0]);
        }
    }
    $("ps").onchange = function () {
        var that = this.value;
        {
            $("ddfy").innerHTML = "预订费用" + 5*that * 20 + "人民币";
            $("jl").onchange = function () {
                $("ddfy").innerHTML = "预订费用" + this.value*that * 20 + "人民币";
            }
        }
    }
    
    
   $("tjdd").onclick = function(){
        $("yud").style.display="none";
       /* $("mask").style.display = "block";*/
        $("yxzf").style.display = "block";
    }
    $("close_zf").onclick = function(){
       /* $("mask").style.display = "none";*/
        $("yxzf").style.display = "none";
    }
    for(var i=1;i<7;i++){
        $("yd"+i+"").onclick = function(){
            /*$("mask").style.display = "block";*/
            $("yud").style.display = "block";
        }
    }

    $("close_yud").onclick = function(){
        $("mask").style.display = "none";
        $("yud").style.display = "none";
    }
    var scroll = document.getElementById("scroll");
    var first = scroll.children[0];
    var timer = null;
    var num = 0;
    timer = setInterval(autoPlay,20);
    function autoPlay(){
        num--;
        if(num<=-2800){
            first.style.left = 0;
            num = 0;
        }
        else{
            first.style.left = num + "px";
        }
    }
    scroll.onmouseover = function(){
        clearInterval(timer);
    }
    scroll.onmouseout = function(){
        timer = setInterval(autoPlay,20);
    }

    var date1 = new Date();
    var att1 = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
    var sj = (date1.getMonth() + 1) + "月" + date1.getDate() + "日 &nbsp;"+ "&nbsp;&nbsp;&nbsp;"+att1[date1.getDay()];
    var ri = date1.getDate();
    for(var i=1;i<=6;i++){
        $("sj"+i).innerHTML = sj;
        sj = (date1.getMonth() + 1) + "月" + (ri+i) + "日 &nbsp;"+ "&nbsp;&nbsp;&nbsp;"+att1[(date1.getDay()+i)%7];
    }
}