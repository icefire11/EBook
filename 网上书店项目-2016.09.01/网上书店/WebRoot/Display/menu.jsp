<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML >
<html>
  <head>    
    <title>My JSP 'menu.jsp' starting page</title>
	<style>
	
.wrapper2{
    width: 200px;
    height: 50px;
    background : #464646;
    background : -webkit-gradient(linear, left top, left bottom, from(rgb(168,168,168)), to(rgb(69,69,69)));
    background : -moz-linear-gradient(top, rgb(168,168,168), rgb(69,69,69));
    border-top: 2px solid #939393;
    position: relative;
    margin-bottom: 50px;
}
 


<!-- The CSS code for the menu item. -->
ul {
    margin: 0;
    padding: 0;
}

ul.menu {
    height: 50px;
    border-left: 1px solid rgba(0,0,0,0.3);
    border-right: 1px solid rgba(255,255,255,0.3);
    float:left;
}

ul.menu li {
    list-style: none;
    float:left;
    height: 50px;
    text-align: center;
    background: -webkit-gradient(radial, 50% 100%, 10, 50% 50%, 90, from(rgba(31,169,244,1)), to(rgba(0,28,78, 1)) );
    background: -moz-radial-gradient(center 80px 45deg, circle cover, rgba(31,169,244,1) 0%, rgba(0,28,78, 1) 100%);
    }

ul li a {
    display: block;
    padding: 0 20px;
    border-left: 1px solid rgba(255,255,255,0.1);
    border-right: 1px solid rgba(0,0,0,0.1);
    text-align: center;
    line-height: 50px;
    background : -webkit-gradient(linear, left top, left bottom, from(rgb(168,168,168)), to(rgb(69,69,69)));
    background : -moz-linear-gradient(top, rgb(168,168,168), rgb(69,69,69));
    -webkit-transition-property: background;
    -webkit-transition-duration: 700ms;
    -moz-transition-property: background;
    -moz-transition-duration: 700ms;
    }

ul li a:hover {
    background: transparent none;
}

ul li.active a{
    background: -webkit-gradient(radial, 50% 100%, 10, 50% 50%, 90, from(rgba(31,169,244,1)), to(rgba(0,28,78, 1)) );
    background: -moz-radial-gradient(center 80px 45deg, circle cover, rgba(31,169,244,1) 0%, rgba(0,28,78, 1) 100%);
}
	</style>

  </head>
  
  <body style="background-color:#DDDDDD">
    <div class="wrapper">
<div class="container"><ul class="menu" >
<div  style="margin-left:400">
<li class="active"><a href="shouye.jsp">  首页  </a></li>
<li ><a href="food.jsp">  暑期促销 </a></li>

<li><a href="food.jsp">  图书  </a></li>
<li><a href="food.jsp">  电子书    </a></li>
<li><a href="food.jsp">  突突优品    </a></li>
<li><a href="food.jsp">  突突超市    </a></li>
<li><a href="food.jsp">  我要淘    </a></li>
<li><a href="food.jsp">  书本对比    </a></li>
<li><a href="food.jsp">  海外购    </a></li>
<li><a href="food.jsp">  店长推荐    </a></li>
</div>
<div style="position:absolute;margin:65 1 1 1000">
<h1><input type="submit" value="搜一下" ></h1>
</div>
<div style="position:absolute;margin:60 1 1 550">
 <input type="text" name = "shoushuo" style="width:440px;height:45px" />
 </div>
</ul>
</div>
</div>
 


  </body>
</html>
