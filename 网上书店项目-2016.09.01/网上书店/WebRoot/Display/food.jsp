<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'food.jsp' starting page</title>

  </head>
  
  <style>
  {
  * {margin: 0; padding: 0;}
div {
margin: width:10px height:10px ;
top:0px;
}
ul {
list-style-type: none;
width: 100px;
}
h3 {
font: bold 20px/1.5 Helvetica, Verdana, sans-serif;
}
li img {
float: left;
margin: 0 15px 0 0;
}
li p {
font: 200 12px/1.5 Georgia, Times New Roman, serif;
}
li {
padding: 10px;
overflow: auto;
}
li:hover {
background: #eee;
cursor: pointer;
}
}</style>
	
 </head>
  
  
  
 <body>
 <div>
 <jsp:include page="menu.jsp"></jsp:include>
 </div>
 
<div>
<ul>

<li>
<img src="a.jpg">
<h3>卤肉饭</h3>

<span>食材新鲜，荤素搭配</span>
<tr>
<td>
     <input type="submit" value="标记"> 
     <input type="submit" value="评论" onclick="window.location.href='pinglun.jsp'"> 
     <input type="submit" value="收藏"> 
     </td>
     </tr>


</li>
<li>
<img src="b.jpg">
<h3>小碗菜</h3>
<span>精致小菜，价格稍贵</span>
<tr>
<td>
     <input type="submit" value="标记"> 
     <input type="submit" value="评论" onclick="window.location.href='pinglun.jsp'"> 
     <input type="submit" value="收藏"> 
     </td>
     </tr>
</li>
<li>
<img src="c.jpg">
<h3>精品套餐</h3>
<span>大众套餐，菜品多样</span>
<tr>
<td>
     <input type="submit" value="标记"> 
     <input type="submit" value="评论" onclick="window.location.href='pinglun.jsp'"> 
     <input type="submit" value="收藏"> 
     </td>
     </tr>
</li>
</ul>
</div>
</body>
</html>
