<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.opensymphony.xwork2.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>预订页面</title>
    <link rel="stylesheet" href="css/base.css"/>
	<link rel="stylesheet" href="css/zc.css"/>
	<link rel="stylesheet" href="css/dl.css"/>
	<link rel="stylesheet" href="css/reserve.css"/>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
	<script src="js/reserve.js"></script>

<script type="text/javascript">
$(function (){

	  /* var tjdd = document.getElementById("tjdd");
		var close_zf = document.getElementById("close_zf");
		var close_yud = document.getElementById("close_yud");
		var yud = document.getElementById("yud");
		var mask = document.getElementById("mask");		
		var yxzf = document.getElementById("yxzf");
		var yd = document.getElementById("yd");
		tjdd.onclick = function(){
			yud.style.display="none";
			mask.style.display = "block";
			yxzf.style.display = "block";
	    }
		close_zf.onclick = function(){
			mask.style.display = "none";
	        yxzf.style.display = "none";
	    }
	    for(var i=1;i<7;i++){
	        (yd+i).onclick = function(){
	        	mask.style.display = "block";
	        	yxzf.style.display = "block";
	        }
	    }

	    close_yud.onclick = function(){
	    	mask.style.display = "none";
	    	yud.style.display = "none";
	    }  */
	
	
	var zc = document.getElementById("zc");
	var an_dl = document.getElementById("an_dl");
	var close_all = document.getElementById("close_all");
	var close_all_login = document.getElementById("close_all_login");		
	var mask = document.getElementById("mask");
	var my_zc = document.getElementById("my_zc");
	zc.onclick = function(){
		mask.style.display = "block";
		my_zc.style.display = "block";
	}

	close_all.onclick = function(){
		mask.style.display = "none";
		my_zc.style.display = "none";
	}
	an_dl.onclick = function(){
		mask.style.display = "block";
		my_dl.style.display = "block";
	}
	close_all_login.onclick = function(){
		mask.style.display = "none";
		my_dl.style.display = "none";
	}
	
	var sjkhd = document.getElementById("sjkhd");
	var mask = document.getElementById("mask");
	var ewmcx = document.getElementById("ewmcx");
	sjkhd.onmouseover = function(){
		mask.style.display = "block";
		ewmcx.style.display = "block";
	}
	sjkhd.onmouseout = function(){
		mask.style.display = "none";
		ewmcx.style.display = "none";
	}
});

		var start = 0;
		var end = 5;
		var j=0;
		var pageCode0 = 0;
		var pageCode1 = 0;
		var pageCode=1;
		var p=1;
		 $(function(){
			   /*  var date1 = new Date();
			    var att1 = ["星期天", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
			    var sj = (date1.getMonth() + 1) + "月" + date1.getDate() + "日 &nbsp;"+ "&nbsp;&nbsp;&nbsp;"+att1[date1.getDay()];
			    var ri = date1.getDate();	
			    for(var i=1;i<=6;i++){
			        $("#sj"+i).append(sj);
			        sj = (date1.getMonth() + 1) + "月" + (ri+i) + "日 &nbsp;"+ "&nbsp;&nbsp;&nbsp;"+att1[(date1.getDay()+i)%7];
			    }  */
			 
		 });
		//显示剩余条数
		 $.get("order_total.action",//请求的action相对路径				
					function(data) {	
						/* alert(data[0].order_total); */
						$("#total").html(data[0].order_total);
				}, "json"
				);
		
		$.get("userComment_findByPage.action",//请求的action相对路径
				{
					pageCode: p,
					pageSize:"5"
				},
				function(data) {	
					/* alert(data.pageCode);
					alert(data.pageSize);
					alert("总共" + data.totalPage +"页");
					alert("总共" + data.totalCount + "条"); */				
					/* $("#pageCode").html(data.pageCode-1); */
					pageCode0 = data.pageCode;
					pageCode1 = data.pageCode+1;
					/* $("#pageCode0").html(pageCode0);
					$("#pageCode1").html(pageCode1); */
					$("#pageCode").html("当前页数:" + pageCode);
					/* if(data.pageCode == 1) {
						bef.style.display="none";
					} */
					/* $("#pageCode").html(data.pageCode+1);
					$("#pageCode").html(data.pageCode+2); */
					$.each(data,function(key,val){	
						
						function getDateStr(str) {
							 var strDate = new Date(str);
							 var sDate = strDate.toLocaleString().split(' ')[0];
							 return sDate.replace(/年|月/g, '-').replace(/日/g, '');
						};
							var date = getDateStr(val.comment_date); 			 
							for(var k=0; k<val.length; k++) {
								var date = getDateStr(val[k].comment_date); 
								$("#userCode").append("用户 : " + val[k].user_code + "&nbsp;&nbsp;&nbsp;&nbsp;" + "时间 : " + date + "<br/>");
								$("#userCode").append("评语 : " + val[k].user_comment +"<br />");
								$("#userCode").append();
								$("#userCode").append("--------------------------------------------------");
								$("#userCode").append("--------------------------------------------------<br />");
								
							}

					});		
			}, "json"
			);

	
	function commit0() {	
		p = 1;
	}
	function commit1() {	
		p = 2;
		$("#userCode").html("");
		$("#pageCode1").html("");
		$.get("userComment_findByPage.action",//请求的action相对路径
				{
					pageCode:p,
					pageSize:"5"
				},
				function(data) {	
					/* alert(data.pageCode);
					alert(data.pageSize);
					alert("总共" + data.totalPage +"页");
					alert("总共" + data.totalCount + "条"); */				
					/* $("#pageCode").html(data.pageCode-1); */
					pageCode0 = data.pageCode;
					pageCode1 = data.pageCode+1;
					$("#pageCode0").html(pageCode0);
					$("#pageCode1").html(pageCode1);
					/* $("#pageCode").html(data.pageCode+1);
					$("#pageCode").html(data.pageCode+2); */
					$.each(data,function(key,val){	
						
						function getDateStr(str) {
							 var strDate = new Date(str);
							 var sDate = strDate.toLocaleString().split(' ')[0];
							 return sDate.replace(/年|月/g, '-').replace(/日/g, '');
						};
							var date = getDateStr(val.comment_date); 			 
							for(var k=0; k<val.length; k++) {
								var date = getDateStr(val[k].comment_date); 
								$("#userCode").append("用户 : " + val[k].user_code + "&nbsp;&nbsp;&nbsp;&nbsp;" + "时间 : " + date + "<br/>");
								$("#userCode").append("评语 : " + val[k].user_comment +"<br />");
								$("#userCode").append();
								$("#userCode").append("--------------------------------------------------");
								$("#userCode").append("--------------------------------------------------<br />");
								
							}
					});		
			}, "json"
			);
	}
	
	
	function next() {
		p = p + 5;
		pageCode = pageCode+1;
		$("#userCode").html("");
		$.get("userComment_findByPage.action",//请求的action相对路径
				{
					pageCode: p,
					pageSize:"5"
				},
				function(data) {		 
					$("#pageCode").html("当前页数:" + pageCode);
					$.each(data,function(key,val){
						function getDateStr(str)
						{
						 var strDate = new Date(str);
						 var sDate = strDate.toLocaleString().split(' ')[0];
						 return sDate.replace(/年|月/g, '-').replace(/日/g, '');
						};
						var date = getDateStr(val.comment_date); 
						/* alert(d); */
						for(var k=0; k<val.length; k++) {
								var date = getDateStr(val[k].comment_date); 
								$("#userCode").append("用户 : " + val[k].user_code + "&nbsp;&nbsp;&nbsp;&nbsp;" + "时间 : " + date + "<br/>");
								$("#userCode").append("评语 : " + val[k].user_comment +"<br />");
								$("#userCode").append();
								$("#userCode").append("--------------------------------------------------");
								$("#userCode").append("--------------------------------------------------<br />");
								
							}
						if(data.pageCode != 1) {
							alert(data.pageCode);
							bef.style.display="block";
						}
					});
					
			}, "json"
			);

	}
	
	function before() {
		start = start - 5;
		$("#userCode").html("");
		$.get("userComment_reveal.action",//请求的action相对路径
				{
					pageStart:start,
					pageEnd:end
				},
				function(data) {		 
					$.each(data,function(key,val){
						function getDateStr(str)
						{
						 var strDate = new Date(str);
						 var sDate = strDate.toLocaleString().split(' ')[0];
						 return sDate.replace(/年|月/g, '-').replace(/日/g, '');
						};
						var date = getDateStr(val.comment_date); 
						/* alert(d); */
						$("#userCode").append("用户 : " + val.user_code + "&nbsp;&nbsp;&nbsp;&nbsp;" + "时间 : " + date + "<br/>");
						$("#userCode").append("评语 : " + val.user_comment +"<br />");
						$("#userCode").append();
						$("#userCode").append("--------------------------------------------------");
						$("#userCode").append("--------------------------------------------------<br />");
					});				
			}, "json"
			);
	}
</script>

</head>
<body>
<div id="gotop" class="toppp">
	<img src="images/Top.jpg" alt=""/>
</div>

<div class="T_left" id="my_zc">
	<span id="close_all">×</span>
	<h1>注册</h1>
	<form method="post">
		<input type="text" required="required" placeholder="用户名" name="uername" />
		<input type="password" required="required" placeholder="密码"
			   name="password"/>
		<input type="password" required="required" placeholder="确认密码"
			   name="repassword"/>
		<input type="text" required="required" placeholder="email"
			   name="email"/>
		<input type="checkbox" value="同意" class="checkbox"><span class="agree">同意版权协议及其声明</span>
		<button class="but" type="submit">注册</button><span class="account">已有帐号？<a href="#">马上登陆</a></span>
	</form>
</div>
<div class="login" id="my_dl">
	<span id="close_all_login">×</span>
	<h1>海印体育馆</h1>
	<form action="user_login" method="post">
		<input type="text" required="required" placeholder="用户名" name="user_code"/>
		<input type="password" required="required" placeholder="密码" name="user_password"/>
		<button class="but" type="submit">登陆</button>
		<span class="register"><a href="#">注册新用户</a></span>
		<span class="forget">忘记密码</span>
	</form>
</div>
<div id="yud">
	<form action="${pageContext.request.contextPath}/order_submit.action?user_code=${sessionScope.user}" id="yud_bd" method="post">
		<span id="close_yud">×</span>
		余票:<span id="total"></span>
		<h1 name="user_code">${sessionScope.user}</h1>
		
		预订票数：<select name="amount" id="ps">
					<option value="1">预订一张</option>
					<option value="2">预订两张</option>
					<option value="3">预订三张</option>
					<option value="4">预订四张</option>
	               </select></br>
		是否要教练：<select name="order_coach" id="jl">
		<option value="1" name="order_coach">要的</option>
		<option value="0" name="order_coach">不要</option>
	                </select>
		<span id="ddfy"></span>
		<!-- <button class="but" type="button" id="tjdd">提交订单</button> -->
		<input class="but" type="submit" id="tjdd" value="提交订单" style="height: 40px;"/>
	</form>
</div>
<div id="yxzf">
	<span id="close_zf">×</span>
	<h1>微信支付</h1>
	<img src="images/wxzf.png" alt=""/>
</div>
<div class="ewm" id="ewmcx">
	<ul>
		<li><p><img src="images/wxzf.png" alt=""> </p><h5>微信客户端</h5></li>
		<li><p><img src="images/ewm1.jpg" alt=""></p><h5>技术博客端</h5></li>
		<li><p><img src="images/ewm2.jpg" alt=""> </p><h5>海印交流端</h5></li>
	</ul>
</div>
	<div class="header">
  	  <div class="inner_c w">
  		<h1 class="logo">
  			<a href="#">${sessionScope.user }</a>
  		</h1>
  		<div class="nav">
  			<ul>
	  			<li><a href="user_index">首页</a></li>
				<li><a href="#" id="sjkhd">手机客户端</a></li>
				<li><a href="#" class="current">场馆预订</a></li>
				<li><a href="user_BookProcess">预订流程</a></li>
				<li><a href="user_guangzhang">我的场馆</a></li>
			    <li class="last"><a href="user_orde">我的订单</a></li>
  		    </ul>
  		</div>
  		<div class="jrwm">
  			<a href="#">加入我们</a>
  		</div>
      <div class="zc">
        <a href="#" id="zc">注册</a>
        <a href="#" id="an_dl">登陆</a>
      </div></div>
    </div>
<div class="banner w">
	<div class="left">
		<dl>场馆预订</dl>
		<dt>预订详情:</dt>
		<dd>预订人数:场馆内每天可以容纳300百人</dd>
		<dd>培训教练:场内可提供专业教练培训</dd>
		<dd>趣味特价:<i>￥20起</i></dd>
	</div>
	<div class="right">
		<div class="lbt" id="scroll">
			<ul>
				<li><img src="images/fj.jpg" alt=""></li>
				<li><img src="images/fj2.jpg" alt=""></li>
				<li><img src="images/haiy.png" alt=""></li>
				<li><img src="images/hy2.png" alt=""></li>
				<li><img src="images/fj.jpg" alt=""></li>
			</ul>
		</div>
	</div></div>
  	<div class="footer">
  		<div class="top" >
				<a href="#" id="one">场地预定</a>
				<a href="#" id="two">场馆介绍</a>
				<a href="#" id="three">会员评价</a>
			<a href="#" id="four"><img src="images/cj.jpg" alt=""></a>
			<div class="cjl" id="cjly"><div id="title" class="title">开始抽奖啦！</div>
				<div class="btns">
					<span id="play">开 始</span>
					<span id="stop">结 束</span>
				</div></div>
  		</div>
		<div id="change">
			<ul id="lda">
				<li class="show">
					<div class="buttom">
						<a hrer="#" class="le"><img src="images/hy3.jpg" /></a>
					</div>
					<div class="last">
							<p><span id="sj1"></span><button id="yd1">预订</button></p>
							<p><span id="sj2"></span><button id="yd2">预订</button></p>
							<p><span id="sj3"></span><button id="yd3">预订</button></p>
							<p><span id="sj4"></span><button id="yd4">预订</button></p>
							<p><span id="sj5"></span><button id="yd5">预订</button></p>
							<p><span id="sj6"></span><button id="yd6">预订</button></p>
					</div>
				</li>
				<li>
					<div class="right"><img src="images/hy5.jpg" alt=""></div>
					<div class="cgjs">
						<dl>场地设施</dl>
						<dd><span>地板:</span><span>塑胶地板、胶地板</span></dd>
						<dd><span>灯光:</span><span>吊灯</span></dd>
						<dd><span>休息区:</span><span>风扇</span></dd>
						<dl>场馆服务</dl>
						<dd><span>器材租借:</span><span>储物柜</span></dd>
						<dd><span>器材维护:</span><span>拉线</span></dd>
						<dd><span>更多服务:</span><span>WIFI,会员卡</span></dd>
						<dd><span>场馆买品:</span><span>饮料,羽毛球,球拍,球鞋,球衣</span></dd>
						<dd><span>发票:</span><span>暂时不提供发票</span></dd>
						<dd><span>停车:</span><span>内设停车场</span></dd>
					</div>
				</li>
				<li>
					<div class="threebox">
						<dl>
							<img src="images/hy7.jpg" alt="" class="thrpc">
						</dl>
						<dd class="xhx">
							<span id="userCode"></span>					
						</dd>
						<a href="#" onclick="before()" id="bef">上一页</a>
						<a href="#" onclick="next()">下一页</a>
						<span id="pageCode"></span>
					</div>
				</li>
			</ul>
		</div>
  	</div>
  	  <div class="buttom w">
	  <div class="box">
	  <form id="comment"
				action="${pageContext.request.contextPath}/userComment_comment.action?user_code=${sessionScope.user}"
				method="post">
		  <span>贴心小评语：</span><textarea name="user_comment" id="user_comment" cols="30" rows="7"></textarea>
		   <input type="submit" value="提交"/>
		 
		 
		  <a href="#"><img src="images/ka.jpg" alt="" ></a>
		   <button id="button" type="submit" value="onclick="this.form.submit()" style="display: none"/> 
		  </form>
	  </div>
    <div class="w agintw">
        <div class="links">
            <a href="#">关于我们</a>|
            <a href="#">联系我们</a>|
            <a href="#">商家入驻</a>|
            <a href="#">营销中心</a>|
            <a href="#">手机海印</a>|
            <a href="#">友情链接</a>|
            <a href="#">销售联盟</a>|
            <a href="#">海印社区</a>|
            <a href="#">海印公益</a>|
            <a href="#">English Site</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="copyright">
            北京市公安局朝阳分局备案编号110105014669  |  京ICP证070359号  |  互联网药品信息服务资格证编号(京)-经营性-2014-0008  |  新出发京零 字第大120007号<br />
            音像制品经营许可证苏宿批005号  |  出版物经营许可证编号新出发(苏)批字第N-012号  |  互联网出版许可证编号新出网证(京)字150号<br />
            网络文化经营许可证京网文[2014]2148-348号  违法和不良信息举报电话：4006561155  Copyright © 2004-2015  海印HY.com 版权所有<br />
            海印旗下网站：360TOP  拍拍网  网银在线
        </div>
        <div class="message">
            <a href="#"><img src="images/mess.png" alt=""></a>
            <a href="#"><img src="images/mess2.png" alt=""></a>
            <a href="#"><img src="images/mess3.png" alt=""></a>
            <a href="#"><img src="images/mess4.png" alt=""></a>
            <a href="#"><img src="images/mess5.png" alt=""></a>
        </div>
    </div>
</div>

</body>
</html>