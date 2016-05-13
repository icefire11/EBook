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
订单页面 
<div style=""> 
      </div>
      <br>
<% 
  Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement  stmt=con.createStatement();
      String sql = "select * from dingdan1 where name='" + session.getAttribute("username")
      + "'";      
    ResultSet rs = stmt.executeQuery ( sql);
      while(rs.next()){
      %>
          
<br>
<div class="div-a"><img src="${pageContext.request.contextPath}/images/<%=rs.getString(8) %>" width="200" height="200"></div> 
<div class="div-b">
  
<div> <p align="left">书名：<%=rs.getString(10) %></p></div>
  <div> <p align="left">作者：<%=rs.getString(7) %></p></div>
    <div><p align="left">价格：<%=rs.getString(9) %></p></div>
     <div><p align="left">订单号：<%=rs.getString(1) %></p></div>
      <div><p align="left">地址：<%=rs.getString(5) %></p></div>
    </div>
  <div style="align:center;width:100%;  ">
  <form id="form1" name="form1" method="post" action="delete3.jsp">
      <input type="text" name="dingdanhao" value="<%=rs.getString(1) %>"  style="display:none;"/>
      <input name="fukuan" type="submit"  value="删除" style="background-color:pink; " >
      </form>
    </div>
      <br>
      <hr>
      <% 
    }
     %>
        <div style="align:center;"> 
      <form id="form1" name="form1" method="post" action="">
         <div style="float:left;">
           <div align="center">
             <input type="submit" name="button" id="button" value="下一页" />
           </div>
         </div>
      </form>
      </div>
         <div style="float:left;">
           
             <input type="submit" name="button" id="button" value="下一页" />
           
         </div>
      <div align="center">
           </form>
           </div>
           <br>
</div>
      <body style="background-color:#DDDDDD">
    
   



</body> 
</html>