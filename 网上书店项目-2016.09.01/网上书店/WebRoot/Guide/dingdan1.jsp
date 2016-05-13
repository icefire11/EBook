<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%><%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dingdan1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
		 
 function test1() {
     //alert("asd");
     window.location.href = "pay.jsp";

 }
 function test2() {
     //alert("asd");
     window.location.href = "xuxiaodingdan.jsp";

 }
	</script>

  </head>
  
  <body>
    <%         
    String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312"; 
    Class.forName("com.mysql.jdbc.Driver");  
    Connection conn= DriverManager.getConnection(url,"root","");  
    Statement stmt=conn.createStatement();  
	String sql = "select * from dingdan1 where name ='" + session.getAttribute("username")
      + "'"; 
    ResultSet rs = stmt.executeQuery(sql);
    %>
    
    <div style="position:absolute;margin:150 1 1 1">   <img src="images\daomubiji.jpg" width="120" height="180"></div>
    <%
    while(rs.next()){													
    %>
     <style type="text/css">
 body {background-image:url("images\55.jpg");}
 </style>
  <div style="position:absolute;margin:400 1 1 450;">   <img src="images\gouxiong.gif" width="250" height="368">嗷唔~~亲要付款吗</div>
  <div style="position:absolute; font-size:15px;font-family:STLiti;color:red;margin:200 1 1 260">
  <%out.print(rs.getString(1));%></a></div>
 <div style="position:absolute; font-size:15px;font-family:STHeiti;color:black;margin:200 1 1 200">
<%out.print("订单号：");
%>
</div>
<div style="position:absolute; font-size:15px;font-family:STLiti;color:red;margin:200 1 1 360">
  <%out.print(rs.getString(2));%></a></div>
 <div style="position:absolute; font-size:15px;font-family:STHeiti;color:black;margin:200 1 1 300">
<%out.print("收货人：");
%>
</div>
<div style="position:absolute; font-size:15px;-family:STLiti;clor:red;margin:200 1 1 460">
  <%out.print(rs.getString(5));%></a></div>
 <div style="position:absolute; font-size:15px;font-family:STHeiti;color:black;margin:200 1 1 400">
<%out.print("地址：");
%>
</div>
<div style="position:absolute; font-size:15px;font-family:STLiti;color:red;margin:200 1 1 630">
  <%out.print(rs.getString(7));%></a></div>
 <div style="position:absolute; font-size:15px;font-family:STHeiti;color:black;margin:200 1 1 580">
<%out.print("书名：");
%>
 
 <div style="position:absolute; font-size:15px;font-family:STHeiti;color:black;margin:200 1 1 900">
<div style="margin:1 1 1 200"><input value="购买" type="button" onClick="test1()"></div>
<div style="margin:1 1 1 200"><input value="取消" type="button" onClick="test2()"></div>
<br>
<% } %>
  </body>
</html>
