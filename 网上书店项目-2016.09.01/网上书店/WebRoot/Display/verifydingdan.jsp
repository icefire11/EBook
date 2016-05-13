<%@ page language="java" import="java.util.Date,java.text.*,java.sql.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W 3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <title>订单</title>
</head>
<body>
   <div align=center>
   <%
    Date now = new Date(System.currentTimeMillis());
       //获取支付宝
     request.setCharacterEncoding("utf-8");
    String snumber = request.getParameter ( "yourname" );
    //获取密码
    String sPasswd = request.getParameter ( "yourpass" );
    //获取地址
    String sAdd = request.getParameter ( "yourad" );

    	 Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		  Connection con= DriverManager.getConnection ( url, "root",
			      "" );
		Statement stmt=con.createStatement();
		 String sqll = "select shuming,tupianlujing,price,author from bookxinxi where bookname='" + session.getAttribute("bookname2")
      + "'"; 
        
    ResultSet rs = stmt.executeQuery ( sqll );
      if(rs.next()) 
      { 
    String sql= "insert into dingdan1 (dingdanhao,name,zhifubao,zhifubaomima,address,bookname,shuming,tupianlujing,price,author) values ('" + now + "','"  +session.getAttribute("username")+"','" +snumber + "','" + sPasswd+ "','" + sAdd +"','"+ session.getAttribute("bookname2")+"','" + rs.getString(1)+"','" + rs.getString(2)+"','"+ rs.getString(3)+"','"+ rs.getString(4)+"')";   
         stmt.executeUpdate ( sql ); 
         }		
     request.getRequestDispatcher("goumai.jsp").forward(request,response); 
     stmt.close ( );
      con.close ( );
   %>
   </div>
</body>
</html>