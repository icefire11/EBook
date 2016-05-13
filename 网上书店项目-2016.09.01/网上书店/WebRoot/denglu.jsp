<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登陆张田钢的书店</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/body.css"/>
<style type="text/css">
body {
	background-image: url(images/background.jpg);
	margin-left: 0px;
	margin-right: 0px;
	background-repeat: repeat;
}
body,td,th {
	font-family: Arial, Helvetica, sans-serif;
}
</style>
</head>
<body>
<br>
<br>
<br>
<div style="margin-left: 750px; color: #CCC; font-size: 40px;">
 <strong>欢迎光临张田钢书店！</strong>
</div>
<div class="container">
	<section id="content">
		<form action="verifylogin.jsp">
			<h1>会员登录</h1>
			<div>
				<input type="text" placeholder="用户名" required="" name="username" />
			</div>
			<div>
				<input type="password" placeholder="密码" required="" name="password" />
			</div>
			 <div class="">
				<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>			</div> 
			<div>
				<input type="submit" value="登录" class="btn btn-primary" id="js-btn-login"/>
				</form>
				<a href="reg.jsp">没有账号？注册</a>
			</div>
		
		 
	</section>->
</div>



<br><br><br><br>

</body>
</html>