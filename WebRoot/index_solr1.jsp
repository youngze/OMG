<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.opensymphony.xwork2.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>index</title>
	<link rel="stylesheet" href="css/base.css"/>
	<link rel="stylesheet" href="css/index.css"/>
	<link rel="stylesheet" href="css/zc.css"/>
	<link rel="stylesheet" href="css/dl.css"/>
	<script src="js/index.js"></script>

</head>
<body>
   <div id="mask"></div>
   <div class="T_left" id="my_zc">
    <span id="close_all">×</span>
   	  <h1>注册</h1>
   	  <form action="user_regist" method="post">
   	  	<input type="text" required="required" placeholder="用户名" name="user_code" />
   	  	<input type="password" required="required" placeholder="密码"
   	  	name="user_password"/>
   	  	<input type="text" required="required" placeholder="用户姓名"
   	  	name="user_name"/>
   	  	<input type="checkbox" value="同意" class="checkbox"><span class="agree">同意版权协议及其声明</span>
   	  	<button class="but" type="submit">注册</button><span class="account">已有帐号？<a href="#">马上登陆</a></span>	
   	  </form>
    </div>
   <div class="login" id="my_dl">
    <span id="close_all_login">×</span>
   	  <h1>海印体育馆</h1>
   	  <form action="user_login" method="post">
   	  	<input type="text" required="required" placeholder="用户名" name="user_code"/>
   	  	<input type="password" required="required" placeholder="密码"
   	  	name="user_password"/>
   	  	<button class="but" type="submit">登陆</button>
   	  	<span class="register"><a href="#">注册新用户</a></span>
   	  	<span class="forget">忘记密码</span>
   	  </form>
   </div>
  <div class="header">
  	<div class="inner_c">
  		<h1 class="logo">
  			<a href="#">${sessionScope.user }</a>
			<span><select name="" id="xila">
				<option value="0">广东</option>
				<option value="1">上海</option>
				<option value="2">北京</option>
				<option value="3">天津</option>
			</select>
			</span>
  		</h1>
  		<div class="nav">
  			<ul>
	  			<li><a href="#" class="current">首页</a></li>
				<li><a href="#">手机客户端</a></li>
				<li><a href="user_reserve">场馆预订</a></li>
				<li><a href="#">预订流程</a></li>
				<li><a href="#">我是场馆</a></li>
			    <li class="last"><a href="#">我的订单</a></li>
  		    </ul>
  		</div>
  		<div class="jrwm">
  			<a href="#">加入我们</a>
  		</div>
      <div class="zc">
        <a href="#" id="zc">注册</a>
        <a href="#" id="an_dl">登陆</a>
      </div>
  	</div>
  </div>
   <script src="js/zc_dl.js"></script>
  <div class="banner">
	  <h1 id="content">我们都是广东人，一起运“动”起来呗！</h1>
    <h1>运动，就这么简单</h1>
    <p><input type="text" placeholder="请输入馆场关键字" id="srk"><button>按下搜索</button></p>
  </div>
   <script>
	   var att = ["我们都是广东人，一起运“动”起来呗！","在上海这忙碌的环境中我们应该“动”起来！","让北京充满生机，让我们尽情的运“动”吧！","我爱天津，更爱在天津运动！"];
	   function $(a){return document.getElementById(a);}
	   $("xila").onchange = function(){
		   $("content").innerHTML = att[this.value];
	   }

   </script>
  <div class="content">
	  <div class="naoz" id="naozs">
		  <p></p>
		  <span></span>
	  </div>
  		<div class="product">
  			<ul>
  				<c:forEach items="${docList}" var="doc">
  				    <li>
  				  		<p><img src=${doc.image }></p>
  				  			<h3>${doc.area }</h3> 
  				  			<p class="play">
  				  			<a href="reserve.html">立即预订</a>
  				  		</p>
  				    </li>
  				  </c:forEach>		  
  			</ul>
  		</div>
  </div>
  <div class="footer">
    <div class="inner_c">
      <div class="left">
      	<p>
      	   海印历史
      	  <span>HAIYIN HISTORY</span>
      	</p>
  		<ul>
  		    <li>58/09<a href="#">海印前身"茂名红旗联合炼油厂"</a></li>
  			<li>64/04<a href="#">专产并更名为"茂名市试验厂"</a></li>
  			<li>71/05<a href="#">改为茂名市化工一厂</a></li>
  			<li>92/12<a href="#">正式成立了广东海印永业股份有限公司</a></li>
  		</ul>
      </div>
        <div class="right">
        	<h1>校园招聘</h1>
        	<h4>SHOOL JOBS</h4>
        	<ul>
        		<li>招聘岗位</li>
        		<li><a href="#">管理类</a></li>
        		<li><a href="#">地产工程类</a></li>
        		<li><a href="#">互联网电视类</a></li>
        		<li><a href="#">It研发类</a></li>
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
            网络文化经营许可证京网文[2014]2148-348号  违法和不良信息举报电话：4006561155  Copyright © 2004-2015  京东JD.com 版权所有<br />
            京东旗下网站：360TOP  拍拍网  网银在线
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