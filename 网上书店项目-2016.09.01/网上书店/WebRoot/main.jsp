<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE jsp PUBLIC "-//W3C//DTD Xjsp 1.0 Frameset//EN" "http://www.w3.org/TR/xjsp1/DTD/xjsp1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xjsp">
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<title>欢迎光临张田钢的书店</title>
</head>
<frameset rows="168,597" cols="*">
  <frame src="Guide/guide.jsp" name="TopFrame" id="TopFrame" title="TopFrame" />
  <frameset rows="*" cols="359,1309">
    <frame src="Menu/menu.jsp"name="LeftFrame" id="LeftFrame" title="LeftFrame"  />
    <frame src="Display/display.jsp"name="MainFrame" id="MainFrame" title="MainFrame"  />
  </frameset>
</frameset>
<noframes><body>

<%
String name=request.getParameter ( "username" );
session.setAttribute("username", name); %>

</body></noframes>
</html>
