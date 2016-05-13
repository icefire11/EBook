<%@ page language="java" contentType="text/html;charset=gb2312"
pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<!DOCTYPE HTML PUBLIC "-//W 3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <title>登录</title>
</head>
<body>
   <div align=center>
   <%
    //获取用户名
     request.setCharacterEncoding("utf-8");
    String sUserName = request.getParameter ( "yourname" );
    //获取密码
    String sPasswd = request.getParameter ( "yourpass" );
    	 Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement stmt=con.createStatement();
   String sql = "insert into yonghu (name,mima) values ('" + sUserName
      + "','" + sPasswd + "')";   
    stmt.executeUpdate ( sql ); 	
     request.getRequestDispatcher("denglu.jsp").forward(request,response); 
    stmt.close ( );
    con.close ( );
   %>
   </div>
</body>
</html>