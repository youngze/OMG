<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>会员登录</title>
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" />
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<!-- 引入自定义css文件 style.css -->
<link rel="stylesheet" href="css/style.css" type="text/css" />
<style>
body {
	margin-top: 20px;
	margin: 0 auto;
}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}
</style>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
	function confirmOrder(){
		//提交表单
		$("#orderForm").submit();
	}


</script>

</head>

<body>
	<!-- 引入header.jsp -->
	<jsp:include page="/header.jsp"></jsp:include>		
		<div>
			<hr />
			<form id="orderForm" class="form-horizontal" action="${pageContext.request.contextPath }/user_order" method="post"
				style="margin-top: 5px; margin-left: 150px;">
				<!-- method的名字 通过表单提交 -->
				<input type="hidden" name="method" value="confirmOrder">
				<!-- 传递订单oid -->
				<input type="hidden" name="oid" value="">
				
				
				<div class="form-group">
					
					<div class="col-sm-5">
					预定票数：${ model.amount }<br>
					您需付款：${ model.money } 
						<s:property value="orderBean.amount"/>
					</div>
				</div>
				<div class="form-group">
					
					<div class="col-sm-5">
						
					</div>
				</div>
				<div class="form-group">
					
					<div class="col-sm-5">
						
							
					</div>
				</div>
			

				<hr />

				<div style="margin-top: 5px; margin-left: 150px;">
					<strong>选择银行：</strong>
					<p>
						<br /> <input type="radio" name="pd_FrpId" value="ICBC-NET-B2C"
							checked="checked" />工商银行 <img src="./bank_img/icbc.bmp"
							align="middle" />&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
							name="pd_FrpId" value="BOC-NET-B2C" />中国银行 <img
							src="./bank_img/bc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="ABC-NET-B2C" />农业银行 <img
							src="./bank_img/abc.bmp" align="middle" /> <br /> <br /> <input
							type="radio" name="pd_FrpId" value="BOCO-NET-B2C" />交通银行 <img
							src="./bank_img/bcc.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="PINGANBANK-NET" />平安银行
						<img src="./bank_img/pingan.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CCB-NET-B2C" />建设银行 <img
							src="./bank_img/ccb.bmp" align="middle" /> <br /> <br /> <input
							type="radio" name="pd_FrpId" value="CEB-NET-B2C" />光大银行 <img
							src="./bank_img/guangda.bmp" align="middle" />&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="pd_FrpId" value="CMBCHINA-NET-B2C" />招商银行
						<img src="./bank_img/cmb.bmp" align="middle" />
	
					</p>
					<hr />
					<p style="text-align: right; margin-right: 100px;">
						<a href="javascript:;" onclick="confirmOrder()">
							<img src="./images/finalbutton.gif" width="204" height="51"
							border="0" />
						</a>
					</p>
					<hr />
	
				</div>
			
			</form>
			
		</div>

	</div>

	<!-- 引入footer.jsp -->
	<jsp:include page="/footer.jsp"></jsp:include>

</body>

</html>