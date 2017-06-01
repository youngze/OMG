<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8"/>
<head>
	<title>login</title>
	<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	html{
		width: 100%;
		height: 100%;
		overflow: hidden;
		font-style: sans-serif;
	}
	body{
		
		background-color: #4A347A;
	}
	.login{
		position: absolute;
		top: 50%;
		left: 50%;
		margin: -150px 0 0 -150px;
		width: 300px;
		height: 300px;
	}
	.login h1{
		font-size: 2em;
		padding-left: 70px;
	}
	input{
		width: 278px;
		height: 18px;
		margin-bottom: 10px;
		padding: 10px;
		font-size: 13px;
		color: #fff;
		text-shadow: 1px 1px 1px;
		border: 1px solid #312E3D;
		border-bottom: 1px solid #56536A;
		border-radius: 4px;
		background-color: #2D2D3F;
	}
	.but{
		width: 300px;
		min-height: 20px;
		display: block;
		background-color: #4a77d4;
		border: 1px solid #3762bc;
		color: #fff;
		padding: 9px 14px;
		font-size: 15px;
		border-radius: 5px;
	}
	.register{
		float: left;
		font-size: 13px;
		color: white;
		padding-top: 10px;
	}
	.forget{
		font-size: 13px;
		float: right;
		color: white;
		padding-top: 10px;
	}
	</style>
	<script type="text/javascript" src="${ pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript">
	<script type="text/javascript">
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
					$("#codeId").html("登录名已经存在");
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
   <div class="login">
   	  <h1>海印体育馆</h1>
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
</body>
</html>