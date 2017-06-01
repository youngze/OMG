<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>预订页面</title>
    <link rel="stylesheet" href="css/base.css"/>
	<link rel="stylesheet" href="css/zc.css"/>
	<link rel="stylesheet" href="css/dl.css"/>
	<link rel="stylesheet" href="css/reserve.css"/>
	<script src="js/reserve.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
	// 验证登录名
	$(function() {
		var url = "${ pageContext.request.contextPath }/userComment_reveal.action";
		var param = {
			"user_code" : "${sessionScope.user}"
		}
		alert("123");
		$.post(url, param, function(data) {
			// 遍历
			$(data).each(function(i, n) {
				alert("123");
			});
		}, "json");
	})

	function commit() {
		alert("谢谢您的评论！");
	}
</script>
</head>
<body>
<div id="mask"></div>
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
	<form method="post">
		<input type="text" required="required" placeholder="用户名" name="uername"/>
		<input type="password" required="required" placeholder="密码"
			   name="password"/>
		<button class="but" type="submit">登陆</button>
		<span class="register"><a href="#">注册新用户</a></span>
		<span class="forget">忘记密码</span>
	</form>
</div>
	<div class="header">
  	  <div class="inner_c">
  		<h1 class="logo">
  			<a href="#"><img src="images/logo.png"></a>
  		</h1>
  		<div class="nav">
  			<ul>
	  			<li><a href="index.html">首页</a></li>
				<li><a href="#">手机客户端</a></li>
				<li><a href="#" class="current">场馆预订</a></li>
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
      </div></div>
    </div>
  	<div class="banner">
  	  <div class="left">
  	  	<dl>羽毛球馆预订</dl>
  		    <dt>预订详情:</dt>
  		    <dd>预订地址：番禺区市桥西丽工业区丽骏路38号</dd>
  		    <dd>场馆电话：020-39258269</dd>
  		    <dd>趣味特价：<i>￥15起</i></dd>
  	  </div>
  	  <div class="right">
  	    	<a><img src="images/hy2.png" alt=""></a>
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
							<p><span>4月20 (星期五)</span><button>预订</button></p>
							<p><span>4月21 (星期六)</span><button>预订</button></p>
							<p><span>4月22 (星期天)</span><button>预订</button></p>
							<p><span>4月23 (星期一)</span><button>预订</button></p>
							<p><span>4月24 (星期二)</span><button>预订</button></p>
							<p><span>4月25 (星期三)</span><button>预订</button></p>
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
						<dl><img src="images/hy7.jpg" alt="" class="thrpc"></dl>
						<dd class="xhx"><span>用户：3423</span><apan>2017年04月15日</apan></dd>
						<dd>好喜欢，下次还要</dd>
						<dd class="xhx"><span>用户：3423</span><apan>2017年04月15日</apan></dd>
						<dd>好喜欢，下次还要</dd>
						<dd class="xhx"><span>用户：3423</span><apan>2017年04月15日</apan></dd>
						<dd>好喜欢，下次还要</dd>
						<dd class="xhx"><span>用户：3423</span><apan>2017年04月15日</apan></dd>
						<dd>好喜欢，下次还要</dd>
						<dd class="xhx"><span>用户：3423</span><apan>2017年04月15日</apan></dd>
						<dd>好喜欢，下次还要和朋友来</dd>
					</div>
				</li>
			</ul>
		</div>
  	</div>
  	  <div class="buttom">
  	<div class="jd-footer">
    <div class="service">
        <div class="w"></div>
    </div>
    </div>
	  <div class="box">
		  <span>贴心小评语：</span><textarea name="" id="" cols="30" rows="7"></textarea>
		  <button id="button">发布</button>
		  <a href="#"><img src="images/ka.jpg" alt=""></a>
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
<script src="js/zc_dl.js"></script>
</body>
</html>