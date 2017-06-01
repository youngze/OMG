<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.opensymphony.xwork2.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>order</title>
    <link rel="stylesheet" href="css/base.css"/>
    <link rel="stylesheet" href="css/zc.css"/>
    <link rel="stylesheet" href="css/dl.css"/>
    <link rel="stylesheet" href="css/guangzhang.css"/>
</head>
<body>
<div id="gotop" class="toppp">
    <img src="images/Top.jpg" alt=""/>
</div>
<div id="mask"></div>
<div class="T_left" id="my_zc">
    <span id="close_all">×</span>
    <h1>注册</h1>
    <form method="post">
        <input type="text" required="required" placeholder="用户名" name="user_code" />
        <input type="password" required="required" placeholder="密码"
               name="user_password"/>
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
        <li><p><img src="images/ewm2.jpg" alt=""> </p><h5>海印交流端</h5></li>
    </ul>
</div>
<div class="header">
    <div class="inner_c">
        <h1 class="logo">
            <a href="#">${sessionScope.user }</a>
        </h1>
        <div class="nav">
            <ul>
                <li><a href="user_index">首页</a></li>
                <li><a href="#" id="sjkhd">手机客户端</a></li>
                <li><a href="user_reserve">场馆预订</a></li>
                <li><a href="user_BookProcess">预订流程</a></li>
                <li><a href="user_guangzhang" class="current">我的场馆</a></li>
                <li class="last"><a href="order.html">我的订单</a></li>
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
<div class="banner">
    <div class="box">
        <h1>申请加入趣运动/馆掌</h1>
        <form method="post">
            <input type="text" required="required" placeholder="场馆名称" name="chuangname" />
            <input type="text" required="required" placeholder="联系人" name="personname"/>
            <input type="text" required="required" placeholder="联系人号码" name="personname"/>
            <input type="text" required="required" placeholder="所在城市" name="city"/>
            <textarea name="address" placeholder="详细地址" cols="35" rows="5"></textarea>
            <button>立即提交</button>
        </form>
    </div>
</div>
<script src="js/zc_dl.js"></script>
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