<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<title>书目</title> 
<style> 
.div-a{ float:left;width:20%;} 
.div-b{ float:left;width:80%;} 



</style> 
</head> 
<body> 
<div style=""> 
      <form id="form1" name="form1" method="post" action="">
         
           <input type="submit" name="button" id="button" value="返回首页" />
         
      </form>
      </div>
      <br>
<% 
   request.setCharacterEncoding("utf-8");
    //获取用户名
  Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement  stmt=con.createStatement();
      String sql = "delete  from dingdan1 where dingdanhao='" + request.getParameter ( "dingdanhao" ) + "'";      
      stmt.executeUpdate ( sql );
       request.getRequestDispatcher("dingdan.jsp").forward(request,response); 
  %>
</body> 
</html>