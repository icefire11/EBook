<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE jsp PUBLIC "-//W3C//DTD jsp 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.jsp" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.jsp">首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">管理员</a></li>
                <li><a href="#">修改密码</a></li>
                <li><a href="#">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="yonghuguanli.jsp"><i class="icon-font">&#xe008;</i>用户管理</a></li>
                        <li><a href="tushuguanli.jsp"><i class="icon-font">&#xe005;</i>图书管理</a></li>
                        <li><a href="pinglunguanli.jsp"><i class="icon-font">&#xe006;</i>评论管理</a></li>
                        <li><a href="liuyanguanli.jsp"><i class="icon-font">&#xe004;</i>留言管理</a></li>
                      
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.jsp">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">评论管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
            </div>
        </div>
        <div class="result-wrap">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                           
                            <th>书名</th>
                            <th>书代码</th>
                            <th>评论</th>
                            <th>用户名</th>
                            <th>操作</th>
                        </tr>
                         <%
    //获取用户名
     request.setCharacterEncoding("utf-8");
  	 Class.forName("com.mysql.jdbc.Driver");
    	 String url = "jdbc:mysql://localhost:3306/odinms?useUnicode=true&characterEncoding=GB2312";
		 Connection con = DriverManager.getConnection ( url, "root",
			      "" );
		Statement stmt=con.createStatement();
      String sql = "select * from pinglun ";       
    ResultSet rs = stmt.executeQuery ( sql );
    %>
   <% while(rs.next()){
   %>
                        <tr>
                            <td><%=rs.getString(4) %></td>
                            <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                            <td>
                                <form id="form1" name="form1" method="post" action="deletepinglun.jsp">
      <input type="text" name="name" value="<%=rs.getString(2)%>"  style="display:none;"/>
      <input name="fukuan" type="submit"  value="删除" style="background-color:pink; " >
      </form>
                            </td>
                        </tr>
                        <%} %>
                    </table>
                   
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
