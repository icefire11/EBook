<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
<head>
  <title>简单会员注册验证表单</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta charset="utf-8" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <style type="text/css">
		body{
			font:14px/28px "微软雅黑";
		}
		.contact *:focus{outline :none;}
		.contact{
			width: 700px;
			height: auto;
			background: #f6f6f6;
			margin: 40px auto;
			padding: 10px;
		}
		.contact ul {
			width: 650px;
			margin: 0 auto;
		}
		.contact ul li{
			border-bottom: 1px solid #dfdfdf;
			list-style: none;
			padding: 12px;
		}
		.contact ul li label {
			width: 120px;
			display: inline-block;
			float: left;
		}
		.contact ul li input[type=text],.contact ul li input[type=password]{
			width: 220px;
			height: 25px;
			border :1px solid #aaa;
			padding: 3px 8px;
			border-radius: 5px;
		}
		.contact ul li input:focus{
			border-color: #c00;
			
		}
		.contact ul li input[type=text]{
			transition: padding .25s;
			-o-transition: padding  .25s;
			-moz-transition: padding  .25s;
			-webkit-transition: padding  .25s;
		}
		.contact ul li input[type=password]{
			transition: padding  .25s;
			-o-transition: padding  .25s;
			-moz-transition: padding  .25s;
			-webkit-transition: padding  .25s;
		}
		.contact ul li input:focus{
			padding-right: 70px;
		}
		.btn{
			position: relative;
			left: 300px;
		}
		.tips{
			color: rgba(0, 0, 0, 0.5);
			padding-left: 10px;
		}
		.tips_true,.tips_false{
			padding-left: 10px;
		}
		.tips_true{
			color: green;
		}
		.tips_false{
			color: red;
		}
  </style>
  <script type="text/javascript">
	 
 function test1() {
     //alert("asd");
     window.location.href = "";

 }
 function test2() {
     //alert("asd");
     window.location.href = "";

 }
 
  </script>
</head>
<body>
<br>

      <br>
	<div class="contact" >
		<form name="form1" method="post" action="verifydingdan.jsp">
			<ul>
				
                <br>
               
				<li>
					<label>支付宝：</label>
					<input type="password" name="yourname" placeholder="请输入你的支付宝号" onBlur="checkpsd1()" required/><span class="tips" id="divpassword1">请输入支付宝号</span>
				</li>
				<li>
					<label>支付宝密码：</label>
					<input type="password" name="yourpass" placeholder="请输入你的密码" onBlur="checkpsd2()" required/><span class="tips" id="divpassword2">请输入支付宝密码</span>
				</li>
				
               
                <li>
					<label>地址：</label>
					<input type="text" name="yourad" placeholder="请输入您的准确地址"  onblur="checkad()" required/><span class="tips" id="divname">请仔细填写</span>
				</li>
			</ul>
            
			<b class="btn"> <input name="button" type="submit" value="确认付款" target="MainFrame" //>
			<input type="reset" value="取消"/></b>
		</form>
	</div>
	
</body>
</html>

