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
    <link rel="stylesheet" href="css/order.css"/>
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
                <li><a href="user_index">首页</a></li>
                <li><a href="#" id="sjkhd">手机客户端</a></li>
                <li><a href="user_reserve" >场馆预订</a></li>
                <li><a href="user_BookProcess" class="current">预订流程</a></li>
                <li><a href="user_guangzhang">我的场馆</a></li>
                <li class="last"><a href="#" class="current">我的订单</a></li>
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
    <h3>我的订单</h3>
        <ul>
            <li><p class="first">订单编号0001</p></li>
            <li><p class="t">图片</p><p><img src="images/qiu1.png" alt=""></p></li>
            <li><p class="t">馆场</p><p>羽毛球</p></li>
            <li><p class="t">价格</p><p>10人民币</p></li>
            <li><p class="t">时间(小时)</p><p>5</p></li>
            <li><p class="t">小计</p><p>50人民币</p></li>
        </ul>
        <ul>
            <li><p class="first">订单编号0002</p></li>
            <li><p class="t">图片</p><p><img src="images/qiu2.png" alt=""></p></li>
            <li><p class="t">馆场</p><p> 篮球</p></li>
            <li><p class="t">价格</p><p>20人民币</p></li>
            <li><p class="t">时间(小时)</p><p>5</p></li>
            <li><p class="t">小计</p><p>100人民币</p></li>
        </ul><ul>
        <li><p class="first">订单编号0003</p></li>
        <li><p class="t">图片</p><p><img src="images/qiu3.png" alt=""></p></li>
        <li><p class="t">馆场</p><p>游泳</p></li>
        <li><p class="t">价格</p><p>90人民币</p></li>
        <li><p class="t">时间(小时)</p><p>5</p></li>
        <li><p class="t">小计</p><p>450人民币</p></li>
    </ul>
    <ul>
        <li><p class="first">订单编号0004</p></li>
        <li><p class="t">图片</p><p><img src="images/qiu4.png" alt=""></p></li>
        <li><p class="t">馆场</p><p>篮球</p></li>
        <li><p class="t">价格</p><p>80人民币</p></li>
        <li><p class="t">时间(小时)</p><p>5</p></li>
        <li><p class="t">小计</p><p>400人民币</p></li>
    </ul>
    <ul>
        <li><p class="first">订单编号0005</p></li>
        <li><p class="t">图片</p><p><img src="images/qiu5.png" alt=""></p></li>
        <li><p class="t">馆场</p><p>乒乓球</p></li>
        <li><p class="t">价格</p><p>3人民币</p></li>
        <li><p class="t">时间(小时)</p><p>5</p></li>
        <li><p class="t">小计</p><p>15人民币</p></li>
    </ul>
    <ul>
        <li><p class="first">订单编号0006</p></li>
        <li><p class="t">图片</p><p><img src="images/qiu6.png" alt=""></p></li>
        <li><p class="t">馆场</p><p>桌球</p></li>
        <li><p class="t">价格</p><p>120人民币</p></li>
        <li><p class="t">时间(小时)</p><p>5</p></li>
        <li><p class="t">小计</p><p>600人民币</p></li>
    </ul>
    <ul>
        <li><p class="first">订单编号0007</p></li>
        <li><p class="t">图片</p><p><img src="images/qiu7.png" alt=""></p></li>
        <li><p class="t">馆场</p><p>健身</p></li>
        <li><p class="t">价格</p><p>90人民币</p></li>
        <li><p class="t">时间(小时)</p><p>5</p></li>
        <li><p class="t">小计</p><p>450人民币</p></li>
    </ul>
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
