<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"#"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<title>站下拉二级导航菜单 </title>
</head>
<body id="homepage">
<div style="font-size:30px;color:red; text-align:center; top=5px; "  >

<img src="../title.png" /></div>



<div class="span1" style="float:right" align="center" ><span class="span1" style="font-size:20px;color:red;">     </span></div>
	<div id="main_nav">
		<ul>
		<li></li>
		<li></li>
		<li></li>
		<li><a href="../Display/display.jsp"target="MainFrame">首页</a></li>
		<li><a href="#">热销图书</a>
			<ul>
			<li><a href="#">本周热销</a></li>
            <li><a href="#">本月热销</a></li>
			
		  </ul>
		</li>
        <li><a href="#">排行榜</a></li>
		<li><a href="#">新书展台</a>
            <ul>
			<li><a href="#">中文书</a></li>
            <li><a href="#">外文书</a></li>
			
			</ul>
        </li>
        
		<li><a href="#">淘旧书</a>
			
		</li>
		<li><a href="order.jsp" target="MainFrame">我的购物车</a>
			<ul>
			<li><a href="#">查看购物车</a></li>
			<li><a href="#">结算</a></li>
			</ul>
		</li>
		<li><a href="dingdan.jsp"target="MainFrame">我的订单</a>
			<ul>
			<li><a href="#">查看全部订单</a></li>
			<li><a href="#">修改订单</a></li>
			</ul>
		</li>
		<li><a href="liuyan.jsp"target="MainFrame">留言板</a>
		
			<ul>
			
			<li><a href="#">联系方式</a></li>
			</ul>
		</li>
		
	  </ul>		
	</div>
<div style="font-size:30px;color:red; text-align:center; "  >

欢迎您：<%=session.getAttribute("username") %>


</div>
	<div class="clear"></div>
</div><!--end of header-->	
<script type="text/javascript" src="javascript/jquery.js"></script>
<script type="text/javascript" src="javascript/main.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#main_nav').allenMenu();
		});
	</script>
<!--end of wrap-->
<div style="text-align:center;">
<p>&nbsp;</p>
</div>
</body>
</html>
