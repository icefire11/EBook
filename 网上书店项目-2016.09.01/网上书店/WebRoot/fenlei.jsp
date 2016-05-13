<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
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

.btn {
     BORDER-RIGHT: #7b9ebd 1px solid;
     PADDING-RIGHT: 2px;
     BORDER-TOP: #7b9ebd 1px solid;
     PADDING-LEFT: 2px;
     FONT-SIZE: 15px;
     FILTER: progid :   DXImageTransform.Microsoft.Gradient (   GradientType
         =   0, StartColorStr =   #ffffff, EndColorStr =   #cecfde );
     BORDER-LEFT: #7b9ebd 1px solid;
     CURSOR: hand;
     COLOR: black;
     PADDING-TOP: 2px;
     BORDER-BOTTOM: #7b9ebd 1px solid
 }

</style> 

         <script type="text/javascript">
 function test1() {
     //alert("asd");
     window.location.href = "gouwuche.jsp";

 }
 function test2() {
     //alert("asd");
     window.location.href = "pay.jsp";

 }
 </script>
</head> 
<body> 
<% 
  Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement  stmt=con.createStatement();
		
		
      String sql = "select * from bookxinxi ";       
    ResultSet rs = stmt.executeQuery ( sql );
    %>
    <%while(rs.next()) {
    %>       
<br>
<div style=""> 
      <form action="main.jsp" method="post" name="form1" target="new" id="form1">
         
           <input type="submit" name="button" id="button" value="返回首页" />
         
      </form>
      </div>
      <br>
<div class="div-a"><img src="images/<%out.print(rs.getString(8));%>" width="200" height="200"></div> 
<div class="div-b">
  
<div> <p align="left">书名：<%out.print(rs.getString(9));%></p></div>
    <div><p align="left">作者：<%out.print(rs.getString(4));%></p></div>
    <div><p align="left">价格：<%out.print(rs.getString(3));%></p></div>
    <div><p align="left">简介：<%out.print(rs.getString(2));%></p></div>
    </div>
    </div>        
<div style="align:center;width:100%;  ">
<form method="post" name="frmLogin" action="gouwuche2.action">
        <input type="text" name="username" value="<%=session.getAttribute("username") %>"  style="display:none;"/>
           <input type="text" name="bookname" value="<%out.print(rs.getString(1));%>"  style="display:none;"/>
           <input style= "width:80px;height:30px;color:white;background-color:red;" type="submit" id="start_feature" value="加入购物车"/>  
       </form>
      <form method="post" name="frmLogin" action="pay.jsp">
           <input type="text" name="bookname" value="<%out.print(rs.getString(1));%>"  style="display:none;"/>
           <input style= "width:80px;height:30px;color:white;background-color:red;" type="submit" id="start_feature" value="一键购买"/>  
       </form>
        <%} %>
    </div>
    
  
    <br>
    <br>
    <br>
    <br>
<div style="float:left;align:center;">
   
      <form id="form1" name="form1" method="post" action="">
       
          <input type="submit" name="button" id="button" value="上一页" />
        
   </form>
      </div>
      <div style="float:left;align:center;"> 
      <form id="form1" name="form1" method="post" action="">
         
           <input type="submit" name="button" id="button" value="下一页" />
         
      </form>
      
      </div>
      <br>
      <br>
      <br>
      <br>
      <br>
    
   



</body> 
</html>