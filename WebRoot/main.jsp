<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>second text</title>
<link rel="stylesheet" href="buttom.css" />
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	font-family: "Mirosoft YaHei";
}

.header {
	height: 58px;
	background-color: #D4DBE4;
}

.header .inner_c {
	height: 40px;
	width: 1000px;
	margin: 0 auto;
}

.header .logo {
	margin-right: 70px;
	float: left;
}

.header .logo {
	padding-top: 17px;
	border-radius: 50px;
}

.header .nav {
	float: left;
}

.header .nav ul {
	list-style: none;
}

.header .nav ul li {
	float: left;
	width: 100px;
	height: 58px;
}

.header .nav ul li a {
	display: block;
	width: 100px;
	height: 58px;
	line-height: 58px;
	text-decoration: none;
	text-align: center;
	color: #999999;
	font-size: 18px;
	font-family: "Mirosoft YaHei";
}

.header .nav ul li a.current {
	border-bottom: 1px solid black;
}

.header .nav ul li a:hover {
	border-bottom: 1px solid black;
}

.header .jrwm {
	float: left;
	padding-left: 48px;
	padding-top: 12px;
}

.header .jrwm a {
	display: block;
	width: 98px;
	height: 32px;
	background-color: #38B774;
	border: 1px solid #38B774;
	border-radius: 4px;
	text-decoration: none;
	font-size: 14px;
	color: white;
	text-align: center;
	line-height: 32px;
}

.header .zc {
	float: right;
}

.header .zc a {
	display: block;
	width: 48px;
	height: 20px;
	text-decoration: none;
	padding-top: 8px;
	font-size: 18px;
	color: #999999;
}

.banner {
	height: 601px;
	background: url(images/hy8.jpg) no-repeat center top;
}

.banner h1 {
	position: relative;
	top: 278px;
	left: 540px;
	color: white;
}

.banner p {
	position: relative;
	top: 329px;
	left: 460px;
}

.banner p input {
	width: 580px;
	height: 52px;
	background-color: rgba(0, 0, 0, 0.2);
	border-radius: 40px;
	font-size: 18px;
	color: white;
	padding-left: 5px;
}

.content {
	padding: 50px;
	width: 1000px;
	margin: 0 auto;
	overflow: hidden;
}

.content .product ul {
	list-style: none;
}

.content .product ul li {
	float: left;
	width: 218px;
	margin-right: 43px;
}

.content .product ul li.last {
	width: 217px;
	margin-right: 0;
}

.content .product ul li p img {
	height: 130px;
}

.content .product ul li h3 {
	font-size: 14px;
	font-family: "Micosoft YaHei";
	line-height: 38px;
	text-align: center;
}

.content .product ul li .play {
	text-align: center;
}

.content .product ul li .play a {
	font-size: 12px;
	color: #38B774;
	text-decoration: none;
	padding-right: 7px;
	background: url(images/sanjiaoxing.png) no-repeat right center;
}

.footer {
	overflow: hidden;
}

.footer .inner_c {
	width: 1000px;
	margin: 0 auto;
	border-top: 1px solid #DBE1E7;
}

.footer .inner_c .left p img {
	width: 500px;
	height: 120px;
	border-right: 0px solid #C5CFDF;
	border-left: 0px solid #C5CFDF;
	padding-top: 52px;
}

.footer .inner_c .left p ul {
	width: 502px;
	height: 418px;
	padding-top: 94px;
}

.footer .inner_c .left ul li {
	width: 500px;
	list-style: none;
	height: 40px;
	border-bottom: 1px solid #DBE1E7;
	padding-top: 11px;
	font-size: 12px;
	color: #AFBED2;
}

.footer .inner_c .left ul li a {
	font-size: 14px;
	color: blue;
	padding-top: 9px;
	padding-left: 23px;
	text-decoration: none;
}

.footer .inner_c .left ul li a:hover {
	color: black;
	font-weight: bold;
}

.footer .inner_c .left p {
	display: inline-block;
	width: 500px;
	height: 120px;
	line-height: 120px;
	font-size: 25px;
	color: blue;
}

.footer .inner_c .last {
	display: inline;
}

.footer .inner_c {
	overflow: hidden;
}

.footer .inner_c .left {
	float: left;
}

.footer .inner_c .right {
	float: right;
}

.footer .inner_c .right {
	width: 500px;
	height: 310px;
	margin-top: 54px;
	background: url(images/hy9.jpg) no-repeat right center;
}

.footer .inner_c .right h1 {
	font-size: 28px;
	padding-left: 15px;
	padding-top: 35px;
	color: white;
}

.footer .inner_c .right h4 {
	color: white;
	padding-left: 22px;
	font-size: 12px;
}

.footer .inner_c .right ul {
	list-style: none;
	padding-left: 20px;
	padding-top: 26px;
}

.footer .inner_c .right ul li {
	color: white;
}

.footer .inner_c .right ul li a {
	display: block;
	width: 306px;
	color: white;
	text-decoration: none;
	font-size: 14px;
	line-height: 34px;
	border-bottom: 1px solid white;
}

.footer .inner_c .right ul li a:hover {
	color: orange;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<SCRIPT language=javascript>
	// 页面的加载
	$(function() {
		var url = "${ pageContext.request.contextPath }/gym_getGymBean.action";
		var param = {
			"gym_id" : "1"
		};
		$.post(url, param, function(data) {
			// 遍历
			$(data).each(function(i, n) {
				alert("123");
			});
		}, "json");
	})

	function checkLogin() {
		/*  var username = $("#user_name").val();
		if(username.trim() == this.user_code) {
			alert("请先登录");
		} esle {
			alert("ok");
		}; 	 */
		var vs = "${model.user_code}";
		if (vs == "") {
			alert("请先登录");
		}

	}
	$(function() {
		var srkVal = $("#srk").val();
		if(srkVal.trim() == 1) {
			alert("ok");
		};	
	})
</SCRIPT>
</head>
<body>
	<div class="header">
		<div class="inner_c">
			<h4 class="logo">
				<s:property value="[0].top.user_code" />
			</h4>
			<div class="nav">
				<ul>
					<li><a href="#" class="current">首页</a>
					</li>
					<li><a href="#">手机客户端</a>
					</li>
					<li><a href="reserve.html">场馆预订</a>
					</li>
					<li><a href="#">预订流程</a>
					</li>
					<li><a href="#">我是场馆</a>
					</li>
					<li class="last"><a href="#">我的订单</a>
					</li>
				</ul>
			</div>
			<div class="jrwm">
				<a href="#">加入我们</a>
			</div>
			<div class="zc">
				<a href="register.html">注册</a> <a href="login.html">登陆</a>
			</div>
		</div>
	</div>
	<form action="">
	<div class="banner">
		<h1>运动，就这么简单</h1>
		<p>			
				<input type="text" placeholder="请输入馆场关键字" id="srk">
				<input type="submit" value="海印一搜" style="width: 90px;height: 56px;">			
		</p>
		
	</div>
	</form>
	<div class="content">
		<div class="inner_c">
			<div class="product">
				<ul>
					<li>
						<p>
							<img src="images/hy1.jpg">
						</p>
						<h3>广州区预订</h3>
						<p class="play">
							<a href="#" onclick="checkLogin()">立即预订</a>
						</p></li>
					<li>
						<p>
							<img src="images/hy3.jpg">
						</p>
						<h3>东莞区预订</h3>
						<p class="play">
							<a href="#">立即预订</a>
						</p></li>
					<li>
						<p>
							<img src="images/hy5.jpg">
						</p>
						<h3>上海区预订</h3>
						<p class="play">
							<a href="#">立即预订</a>
						</p></li>
					<li class="last">
						<p class="last">
							<img src="images/hy6.jpg">
						</p>
						<h3 class="last">深圳区预订</h3>
						<p class="play">
							<a href="#">立即预订</a>
						</p></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="inner_c">
			<div class="left">
				<p>
					海印历史 <span>HAIYIN HISTORY</span>
				</p>
				<ul>
					<li>58/09<a href="#">海印前身"茂名红旗联合炼油厂"</a>
					</li>
					<li>64/04<a href="#">专产并更名为"茂名市试验厂"</a>
					</li>
					<li>71/05<a href="#">改为茂名市化工一厂</a>
					</li>
					<li>92/12<a href="#">正式成立了广东海印永业股份有限公司</a>
					</li>
				</ul>
			</div>
			<div class="right">
				<h1>校园招聘</h1>
				<h4>SHOOL JOBS</h4>
				<ul>
					<li>招聘岗位</li>
					<li><a href="#">管理类</a>
					</li>
					<li><a href="#">地产工程类</a>
					</li>
					<li><a href="#">互联网电视类</a>
					</li>
					<li><a href="#">It研发类</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="buttom">
		<div class="jd-footer">
			<div class="service">
				<div class="w"></div>
			</div>
		</div>
		<div class="w agintw">
			<div class="links">
				<a href="#">关于我们</a>| <a href="#">联系我们</a>| <a href="#">商家入驻</a>| <a
					href="#">营销中心</a>| <a href="#">手机京东</a>| <a href="#">友情链接</a>| <a
					href="#">销售联盟</a>| <a href="#">京东社区</a>| <a href="#">京东公益</a>| <a
					href="#">English Site</a> <a href="#">Contact Us</a>
			</div>
			<div class="copyright">
				北京市公安局朝阳分局备案编号110105014669 | 京ICP证070359号 |
				互联网药品信息服务资格证编号(京)-经营性-2014-0008 | 新出发京零 字第大120007号<br />
				音像制品经营许可证苏宿批005号 | 出版物经营许可证编号新出发(苏)批字第N-012号 |
				互联网出版许可证编号新出网证(京)字150号<br /> 网络文化经营许可证京网文[2014]2148-348号
				违法和不良信息举报电话：4006561155 Copyright © 2004-2015 京东JD.com 版权所有<br />
				京东旗下网站：360TOP 拍拍网 网银在线
			</div>
			<div class="message">
				<a href="#"><img src="images/mess.png" alt="">
				</a> <a href="#"><img src="images/mess2.png" alt="">
				</a> <a href="#"><img src="images/mess3.png" alt="">
				</a> <a href="#"><img src="images/mess4.png" alt="">
				</a> <a href="#"><img src="images/mess5.png" alt="">
				</a>
			</div>
		</div>
	</div>
	</div>
</body>
</html>