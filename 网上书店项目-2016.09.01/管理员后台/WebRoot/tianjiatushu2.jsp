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
    String name1 = request.getParameter ( "name1" );
    
    String name2 = request.getParameter ( "name2" );
    
    String name3 = request.getParameter ( "name3" );
    
    String name4 = request.getParameter ( "name4" );
    
    String name5 = request.getParameter ( "name5" );
    
    String name6 = request.getParameter ( "name6" );
    
    String name7 = request.getParameter ( "name7" );
    
    String name8 = request.getParameter ( "name8" );
    
    String name9 = request.getParameter ( "name9" );

    	 Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement stmt=con.createStatement();
   String sql = "insert into bookxinxi  values ('" + name1+ "','"+ name2+ "','"+ name3+ "','"+ name4+ "','"+ name5+ "','"+ name6+ "','"+ name7+ "','"+ name8+ "','" + name9 + "')";   
    stmt.executeUpdate ( sql ); 	
     request.getRequestDispatcher("tushuguanli.jsp").forward(request,response); 
    stmt.close ( );
    con.close ( );
   %>
   </div>
</body>
</html>