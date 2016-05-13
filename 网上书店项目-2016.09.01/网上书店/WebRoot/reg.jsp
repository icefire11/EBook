<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
  <title>欢迎注册张田钢的书店</title>
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta charset="utf-8" />
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
	    function checkna(){
			na=form1.yourname.value;
		  	if( na.length <1 || na.length >12)  
	  		{  	
	  			divname.innerHTML='<font class="tips_false">长度是1~12个字符</font>';
	  		     
	  		}else{  
	  		    divname.innerHTML='<font class="tips_true">输入正确</font>';
	  		   
	  		}  
	  	
	  }
	  //验证密码 

		//验证确认密码 
		function checkpsd2(){ 
				if(form1.yourpass.value!=form1.yourpass2.value) { 
				     divpassword2.innerHTML='<font class="tips_false">您两次输入的密码不一样</font>';
				} else { 
				     divpassword2.innerHTML='<font class="tips_true">输入正确</font>';
				}
		}
		//验证邮箱
         
 function test1() {
     //alert("asd");
     window.location.href = "Denglu/denglu.jsp";

 }
 function test2() {
     //alert("asd");
     window.location.href = "";

 }
 
  </script>
</head>

<body>
	<div class="contact" >
		<form name="form1" method="post" action="verifyreg.jsp">
			<ul>
				<li>
					<label>姓名：</label>
					<input type="text" name="yourname" placeholder="请输入用户名"  onblur="checkna()" required/><span class="tips" id="divname">长度1~12个字符</span>
				</li>
                 <li>
					<label>性别</label>
				  
					  <label>
					    <input name="RadioGroup1" type="radio" id="RadioGroup1_0" value="男" checked>
					   男</label>
					  
					  <label>
					    <input name="RadioGroup1" type="radio" id="RadioGroup1_1" value="女" checked>
					    女</label>
					  
				  
                </li>
                <br>
				<li>
					<label>密码：</label>
					<input type="password" name="yourpass" placeholder="请输入你的密码"  required/><span class="tips" id="divpassword1"></span>
				</li>
				<li>
					<label>确认密码：</label>
					<input type="password" name="yourpass2" placeholder="请再次输入你的密码" onBlur="checkpsd2()" required/><span class="tips" id="divpassword2">两次密码需要相同</span>
				</li>
			</ul>
			<b class="btn"><input type="submit" value="提交" onclick="test1();"/>
			<input type="reset" value="取消"/></b>
		</form>
	</div>
	<div style="text-align:center;">
<p>&nbsp;</p>
</div>
</body>
</html>

