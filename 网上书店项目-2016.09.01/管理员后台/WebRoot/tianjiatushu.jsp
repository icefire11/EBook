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
	background-image: url(i);
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
</head>

<body>
	<div class="contact" >
		<form name="form1" method="post" action="tianjiatushu2.jsp">
			<ul>
				<li>
					<label>BOOK代码：</label>
					<input type="text" name="name1" placeholder="请输入用户名"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>简介：</label>
					<input type="text" name="name2" placeholder="请输入介绍"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>价格：</label>
					<input type="text" name="name3" placeholder="请输入价格  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>作者：</label>
					<input type="text" name="name4" placeholder="请输入作者"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>出版社：</label>
					<input type="text" name="name5" placeholder="请输入出版社"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>出版时间：</label>
					<input type="text" name="name6" placeholder="请输入出版时间"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>详情路径：</label>
					<input type="text" name="name7" placeholder="请输入详情路径"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>图片名称：</label>
					<input type="text" name="name8" placeholder="请输入图片名称"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				<li>
					<label>书名：</label>
					<input type="text" name="name9" placeholder="请输入书名"  onblur="checkna()" required/><span class="tips" id="divname"></span>
				</li>
				
                 
			</ul>
			<b class="btn"><input type="submit" value="确认添加" onclick="test1();"/>
			<input type="reset" value="取消"/></b>
		</form>
	</div>
	<div style="text-align:center;">
<p>&nbsp;</p>
</div>
</body>
</html>

