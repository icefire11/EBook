<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <div style="width:900px;height:50px;position:absolute; font-size:20px;font-family:LiSu;color:red;margin:660 10 500 40">
	 <hr>
	 </div>
   <div style="position:absolute;margin:680 1 1 550">
	 <input style= "width:100px;height:50px;color:white;background-color:#808080;" type="button" id="start_feature" value="评论详情" />
	 </div> 
	 <div style="width:900px;height:50px;position:absolute; font-size:20px;font-family:LiSu;color:red;margin:730 10 1 40">
	 <hr>
	 </div>
	 <div style="width:400px;height:50px;position:absolute; font-size:20px;font-family:LiSu;color:red;margin:750 1 1 600">
	  <% 
  Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement stmt=con.createStatement();
      String sql = "select * from pinglun where bookname='" + session.getAttribute("bookname2")
      + "'";       
    ResultSet rs = stmt.executeQuery ( sql );
    int n=1;
   
    %>
    <%
      while(rs.next()) {
      %>
         <div style=" font-size:15px;font-family:SimHei;color:black">
         <%
         out.print("评论("+n+"):");
         %>
         </div>
         <%
         out.print(rs.getString(3));
         out.print(": ");
         %>
         <%
          out.print(rs.getString(2));
          n++;
          %>
          <br>
          <br>
          <% } %>
        
        </div>
        
  </body>
</html>

