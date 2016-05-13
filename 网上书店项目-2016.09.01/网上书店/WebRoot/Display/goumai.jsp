<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>详情浏览页面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <% 
  Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement  stmt=con.createStatement();
		
		
      String sql = "select * from bookxinxi where bookname='" + session.getAttribute("bookname2")
      + "'";       
    ResultSet rs = stmt.executeQuery ( sql );
    %>
    <%while(rs.next()) {
    %>       
 <div style="position:absolute;margin:40 1 1 50">   <img src="${pageContext.request.contextPath}/images/<%out.print(rs.getString(8));%>" width="400" height="600"></div>
</div>
<div style="position:absolute; font-size:25px;font-family:SimHei;color:black;margin:150 1 1 500">
<%
out.print(rs.getString(2));%>
</div>
<div style="position:absolute; font-size:40px;font-family:STLiti;color:black;margin:260 1 1 500">
抢购价：</div>
<div style="position:absolute; font-size:25px;font-family:SimHei;color:biack;margin:260 1 1 650">
<%
out.print("RMB");
%>
</div>
<div style="position:absolute; font-size:50px;font-family:STLiti;color:red;margin:260 1 1 720">
<%
out.print(rs.getString(3));%></div>
<div style="position:absolute; font-size:20px;font-family:STLiti;color:blue;margin:260 1 1 1100">
<a href="food.jsp">详情</a></div>
<div style="position:absolute; font-size:20px;font-family:SimSuncss;color:black;margin:330 1 1 500">
<%out.print("作者：");
%>
<a href="food.jsp">	
<%
out.print(rs.getString(4));%></a></div>
<div style="position:absolute; font-size:20px;font-family:STHeiti;color:black;margin:360 1 1 500">
<%out.print("出版社：");
%>
<a href="food.jsp">
<%
out.print(rs.getString(5));%></a></div>
<div style="position:absolute; font-size:20px;font-family:STFangsong;color:black;margin:390 1 1 500">
<%
out.print("出版时间：");
%>
<%out.print(rs.getString(6));%></div>
<form method="post" name="frmLogin" action="form.action">

<div style="position:absolute; margin:420 1 2 500">
           <textarea name="pinglunxinxi" id="aa" rows="6"></textarea>
           <input type="text" name="username" value="<%=session.getAttribute("username") %>"  style="display:none;"/>
           <input type="text" name="bookname" value="<%=session.getAttribute("bookname2")%>"  style="display:none;"/>
           <input type="text" name="shuming" value="<%out.print(rs.getString(9));%>"  style="display:none;"/>
            </div>
            <%} %>
<div style="position:absolute;margin:520 1 1 500">
<input style= "width:80px;height:30px;color:black;background-color:yellow;" type="submit" value="提交评论" />
	 </div> 
	 </form>
<div style="position:absolute; font-size:20px;font-family:STFangsong;color:red;margin:560 1 1 500">
我要买：</div>
 <div style="position:absolute; margin:560 1 2 580">
            <input type="text" name="goumaishuliang"value="1" style="width:30px "/>
            </div>
<div style="position:absolute; font-size:20px;font-family:STFangsong;color:black;margin:560 1 1 610">
本</div>
<form method="post" name="frmLogin" action="gouwuche.action">
 <div style="position:absolute;margin:600 1 1 500">
           <input type="text" name="username" value="<%=session.getAttribute("username") %>"  style="display:none;"/>
           <input type="text" name="bookname" value="<%=session.getAttribute("bookname2")%>"  style="display:none;"/>
           <input style= "width:100px;height:50px;color:white;background-color:red;" type="submit" id="start_feature" value="加入购物车"/>
 </div>
 </form>
 <div style="position:absolute;margin:600 1 1 630">
 <input style= "width:100px;height:50px;color:white;background-color:#FFBBF1;" type="button" id="start_feature" value="再买一本"onclick="window.location.href='Display/pay.jsp?'" />
 </div> 
<jsp:include page="xiangqing.jsp"></jsp:include>
<jsp:include page="xianshipinglun.jsp"></jsp:include>

 <body style="background-color:#DDDDDD">
  </body>
</html>
