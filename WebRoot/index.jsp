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
	
	<script type="text/javascript" src="${ pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">

    $(function() {
    	if(${sessionScope.user} != null) {
    		$("#zdggid").html("");
    	}
    });
    
	// 验证登录名
	function checkCode(){
		// 获取用户输入的登录名
		var code = $("#user_code").val();
		// 进行判断，说明没有输入登录名
		if(code.trim() == ""){
			// 给提示
			$("#codeId").addClass("error");
			$("#codeId").html("登录名不能为空");
		}else{
			// 登录名不为空，ajax请求，验证
			var url = "${pageContext.request.contextPath}/user_checkCode.action";
			var param = {"user_code":code};
			$.post(url,param,function(data){
				// 操作data，进行判断
				if(data && data == "no"){
					// 提示
					$("#codeId").addClass("error");
					$("#codeId").alert("登录名已经存在");
				}else{
					$("#codeId").removeClass("error");
					$("#codeId").html("可以注册");
				}
			});
		}
	}
	
	// 可以阻止表单的提交
	function checkForm(){
		// 先让校验名称的方法先执行以下
		checkCode();
		// 获取error的数量，如果数量 > 0，说明存在错误，不能提交表单
		if($(".error").size() > 0){
			return false;
		}
	}
	
</script>

</head>
<body>
<div id="gotop" class="toppp">
	<img src="images/Top.jpg" alt=""/>
</div>
   <div class="zdgg" id="zdggid">
	   <span id="close_gugao">×</span>
	   <img src="images/haiy.png" alt="">
   </div>
   <div id="mask"></div>
   
   <div class="T_left" id="my_zc">
    <span id="close_all">×</span>
   	  <h1>注册</h1>
   	 <%--  <form action="${ pageContext.request.contextPath }/user_regist.action"  method="post">
   	  	<input type="text" placeholder="用户名" name="user_code" onblur="checkCode()" />
   	  	<SPAN id="codeId" style="color: white;"></SPAN>
   	  	<input type="password" required="required" placeholder="密码"
   	  	name="user_password"/>
   	  	<input type="text" required="required" placeholder="用户姓名"
   	  	name="user_name"/>
   	  	<input type="checkbox" value="同意" class="checkbox"><span class="agree">同意版权协议及其声明</span>
   	  	<button >注册</button><span class="account">已有帐号？<a href="#">马上登陆</a></span>	
   	  <input value="注册" class="but" type="submit" onclick="checkForm()"/>
   	  </form> --%>
    
    
<form id=form1 name=form1 action="${ pageContext.request.contextPath }/user_regist.action" onsubmit="return checkForm()" method="post">

            登 录 名： <INPUT id="user_code" style="WIDTH: 130px" name="user_code" onblur="checkCode()">
                	<SPAN id="codeId" style="FONT-WEIGHT: bold;"></SPAN><br>
	    登录密码： <INPUT id="user_password" style="WIDTH: 130px" type=password name="user_password">
<span id=RequiredFieldValidator4 style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入密码</span>
             用户姓名：<INPUT id="user_name" style="WIDTH: 130px" type="text" name="user_name">
<span id=RequiredFieldValidator4 style="FONT-WEIGHT: bold;"></span>
      <input type="submit" value="注册" />  

</form>
    
    
    
    
    </div>
    
    
    
    
    
    
   <div class="login" id="my_dl">
    <span id="close_all_login">×</span>
   	  <h1>南博体育馆</h1>
   	  <form action="user_login" method="post">
   	  	<input type="text" required="required" placeholder="用户名" name="user_code"/>
   	  	<input type="password" required="required" placeholder="密码"
   	  	name="user_password"/>
   	  	<button class="but" type="submit">登陆</button>
   	  	<span class="register"><a href="#">注册新用户</a></span>
   	  	<span class="forget">忘记密码</span>
   	  </form>
   </div>
   <div class="ewm" id="ewmcx">
	   <ul>
		   <li><p><img src="images/wxzf.png" alt=""> </p><h5>微信客户端</h5></li>
		   <li><p><img src="images/ewm1.jpg" alt=""></p><h5>技术博客端</h5></li>
		   <li><p><img src="images/ewm2.jpg" alt=""> </p><h5>南博交流端</h5></li>
	   </ul>
   </div>
  <div class="header">
  	<div class="inner_c w">
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
				<li><a href="#" id="sjkhd">手机客户端</a></li>
				<li><a href="user_reserve">场馆预订</a></li>
				<li><a href="user_BookProcess">预订流程</a></li>
				<li><a href="user_guangzhang">我的场馆</a></li>
			    <li class="last"><a href="user_orde">我的订单</a></li>
  		    </ul>
  		</div>
  		<div class="jrwm">
  			<a href="#">加入我们</a>
  		</div>
      <div class="zc">
        <a href="user_initAddUI" id="zc">注册</a>
        <a href="#" id="an_dl">登陆</a>
      </div>
  	</div>
  </div>
   <script src="js/zc_dl.js"></script>
  <div class="banner w">
	  <h1 id="content">我们都是广东人，一起运“动”起来呗！</h1>
    <h1>运动，就这么简单</h1>
	<div class="w">
	 <form action="solr_solrResult" method="post">
		<p><input type="text" placeholder="请输入馆场关键字" id="srk" name="keyword"><button>按下搜索</button></p>
		</form>
	</div>
  </div>
  <div id="boxhd" class="content">
	  <div class="product w" id="product1">
  			<ul id="imgshd">
				<li>
					<div class="naoz" id="naozs">
						<p></p>
						<p></p>
						<span></span>
						<h3>北京时间</h3>
					</div>
				</li>
  				<li>
  				  <p><img src="images/hy1.jpg"></p>
  				  <h3>汕头区预订</h3>
  				  <p class="play">
  				  	<a href="user_reserve">立即预订</a>
  				  </p>
  				</li>
  				<li>
  				  <p><img src="images/hy3.jpg"></p>
  				  <h3>汕尾区预订</h3>
  				  <p class="play">
  				  	<a href="user_reserve">立即预订</a>
  				  </p>
  				</li>
  				<li>
				<p><img src="images/hy5.jpg"></p>
				<h3>揭阳区预订</h3>
				<p class="play">
					<a href="user_reserve">立即预订</a>
				</p>
			</li>
				<li>
					<p><img src="images/hy5.jpg"></p>
					<h3>茂名区预订</h3>
					<p class="play">
						<a href="user_reserve">立即预订</a>
					</p>
				</li>
				<li>
					<p><img src="images/hy5.jpg"></p>
					<h3>潮汕区预订</h3>
					<p class="play">
						<a href="user_reserve">立即预订</a>
					</p>
				</li>
				<li>
					<p><img src="images/hy5.jpg"></p>
					<h3>湛江区预订</h3>
					<p class="play">
						<a href="user_reserve">立即预订</a>
					</p>
				</li>
				<li>
					<p><img src="images/hy5.jpg"></p>
					<h3>中山区预订</h3>
					<p class="play">
						<a href="user_reserve">立即预订</a>
					</p>
				</li>
				<li>
					<p><img src="images/hy5.jpg"></p>
					<h3>佛山区预订</h3>
					<p class="play">
						<a href="user_reserve">立即预订</a>
					</p>
				</li>
				<li>
					<p><img src="images/hy5.jpg"></p>
					<h3>广州区预订</h3>
					<p class="play">
						<a href="user_reserve">立即预订</a>
					</p>
				</li>
				<li>
					<p><img src="images/hy5.jpg"></p>
					<h3>深圳区预订</h3>
					<p class="play">
						<a href="user_reserve">立即预订</a>
					</p>
				</li>
  				<li class="last">
  				  <p class="last"><img src="images/hy6.jpg"></p>
  				  <h3 class="last">天津区预订</h3>
  				  <p class="play">
  				  	<a href="user_reserve">立即预订</a>
  				  </p>
  				</li>
  			</ul>
  		</div>
	  <div id="arrhd"><span id="lefthd"><</span><span id="righthd">></span></div>
  </div>
  <div class="footer">
    <div class="inner_c w">
      <div class="left">
      	<p>
      	   南博历史
      	   <span>HAIYIN HISTORY</span>
      	</p>
  		<ul>
  		    <li>58/09<a href="#">南博科技有限公司</a></li>
  			<li>64/04<a href="#">南博旗下公司介绍</a></li>
  			<li>71/05<a href="#">广东科技学院体育馆介绍</a></li>
  			<li>92/12<a href="#">正式成立了广东南博有限公司</a></li>
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
    <div class="w agintw">
        <div class="links">
            <a href="#">关于我们</a>|
            <a href="#">联系我们</a>|
            <a href="#">商家入驻</a>|
            <a href="#">营销中心</a>|
            <a href="#">手机南博</a>|
            <a href="#">友情链接</a>|
            <a href="#">销售联盟</a>|
            <a href="#">南博社区</a>|
            <a href="#">南博公益</a>|
            <a href="#">English Site</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="copyright">
            北京市公安局朝阳分局备案编号110105014669  |  京ICP证070359号  |  互联网药品信息服务资格证编号(京)-经营性-2014-0008  |  新出发京零 字第大120007号<br />
            音像制品经营许可证苏宿批005号  |  出版物经营许可证编号新出发(苏)批字第N-012号  |  互联网出版许可证编号新出网证(京)字150号<br />
            网络文化经营许可证京网文[2014]2148-348号  违法和不良信息举报电话：4006561155  Copyright © 2004-2015  南博HY.com 版权所有<br />
            南博旗下网站：360TOP  拍拍网  网银在线
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
<script src="js/index.js"></script>
</body>
</html>