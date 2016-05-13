<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">




<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图片列表滚动jquery选项卡代码 </title>

<link rel="stylesheet" type="text/css" href="css/style.css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$(".yScrollListTitle h1").click(function  () {
		var index=$(this).index(".yScrollListTitle h1");
		$(this).addClass("yth1click").siblings().removeClass("yth1click");
		$($(".yScrollListInList")[index]).show().siblings().hide();
	})
	$(".yScrollListInList1 ul").css({width:$(".yScrollListInList1 ul li").length*(160+84)+"px"});
	$(".yScrollListInList2 ul").css({width:$(".yScrollListInList2 ul li").length*(160+84)+"px"});
	var numwidth=(160+84)*5;
	$(".yScrollListInList .yScrollListbtnl").click(function(){
		var obj=$(this).parent(".yScrollListInList").find("ul");
		if (!(obj.is(":animated"))) {
			var lefts=parseInt(obj.css("left").slice(0,-2));
			if(lefts<30){
				obj.animate({left:lefts+numwidth},1000);
			}
		}
	})
	$(".yScrollListInList .yScrollListbtnr").click(function(){
		var obj=$(this).parent(".yScrollListInList").find("ul");
		var objcds=-(30+(Math.ceil(obj.find("li").length/5)-2)*numwidth);
		if (!(obj.is(":animated"))) {
			var lefts=parseInt(obj.css("left").slice(0,-2));
			if(lefts>objcds){
				obj.animate({left:lefts-numwidth},1000);
			}
		}
	})
})






</script>

</head>
<body>
 <br>

<input name="搜索" type="button"  value="搜索" style="background-color:orange;width:50px;height:30px;float:right; " >
      <input name="搜索框" type="text" style="border-color: #F00; float: right;width:200px;height: 30px; border: 2px;" value="快来搜好书吧！" size="20" maxlength="50"  >
      <br>


<div class="yScrollList">
	<div class="yScrollListTitle"><h1 class="yth1click">人气排行</h1><h1 class="ytitleh12">新品上架</h1></div>
	<div class="yScrollListIn">
		<div class="yScrollListInList yScrollListInList1" style="display:block;">
			<ul>
            
				<li>
					<a href="goumai3.jsp?bookname=daomubiji"  target="MainFrame">
						<img src="../IMAGE/DMBJJNB.png">
						<p>盗墓笔记纪念版</p>
						<span>RMB：25元</span>
					</a>
				</li>
				<li>
					<a href="goumai3.jsp?bookname=ZFZDR">
						<img src="../IMAGE/ZFZDR.png">
						<p>追风筝的人</p>
						<span>RMB：25元</span>
					</a>
				</li>
				<li>
					<a href="goumai3.jsp?bookname=NDGD">
						<img src="../IMAGE/NDGDSBYR.png">
						<p>你的孤独,虽败犹荣</p>
						<span>RMB：25元</span>
					</a>
				</li>
                <li>
					<a href="goumai3.jsp?bookname=GMMT"  target="MainFrame">
						<img src="../IMAGE/GMMT.png">
						<p>乖，摸摸头</p>
						<span>RMB：25元</span>
					</a>
				</li>
				<li>
					<a href="goumai3.jsp?bookname=KJ"  target="MainFrame">
						<img src="../IMAGE/KJ.png">
						<p>看见</p>
						<span>RMB：25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/JYZHD.png">
						<p>解忧杂货店</p>
						<span>RMB：25元</span>
					</a>
				</li>
               
				
				
				
			</ul>
			<div class="yScrollListbtn yScrollListbtnl"></div>
			<div class="yScrollListbtn yScrollListbtnr"></div>
		</div>
		<div class="yScrollListInList yScrollListInList2">
			<ul>
				<li>
					<a href="">
						<img src="../IMAGE/MMHY.png">
						<p>秘密花园</p>
						<span>RMB:25元</span>
					</a>
				</li>
				
				<li>
					<a href="">
						<img src="../IMAGE/HQG.png">
						<p>花千骨</p>
						<span>RMB:25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/BDR.png">
						<p>摆渡人</p>
						<span>RMB:25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/XXR.png">
						<p>肖秀荣2016考研政治命题</p>
						<span>RMB:25元</span>
					</a>
				</li>
                <li>
					<a href="">
						<img src="../IMAGE/WGZNHLGD.png">
						<p>我敢在你怀里孤独</p>
						<span>RMB:25元</span>
				  </a>
			  </li>
				
				
				
			</ul>
			<div class="yScrollListbtn yScrollListbtnl"></div>
			<div class="yScrollListbtn yScrollListbtnr"></div>
		</div>
	</div>
</div>
<div class="yScrollList">
	<div class="yScrollListTitle"><h1 class="yth1click">政治军事</h1><h1 class="ytitleh12">休闲爱好</h1></div>
	<div class="yScrollListIn">
		<div class="yScrollListInList yScrollListInList1" style="display:block;">
			<ul>
				
				<li>
					<a href="">
						<img src="../IMAGE/YMFHYL.png">
						<p>阎明复回忆录</p>
						<span>RMB：25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/ZDDRZ.png">
						<p>战斗的日子</p>
						<span>RMB：25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/YNMZ.png">
						<p>越南密战</p>
						<span>RMB：25元</span>
					</a>
				</li>
                <li>
					<a href="">
						<img src="../IMAGE/DDL.png">
						<p>大断裂</p>
						<span>RMB：25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/LMDPS.png">
						<p>黎明的枪声</p>
						<span>RMB：25元</span>
					</a>
				</li>
				
				
				
			</ul>
			<div class="yScrollListbtn yScrollListbtnl"></div>
			<div class="yScrollListbtn yScrollListbtnr"></div>
		</div>
		<div class="yScrollListInList yScrollListInList2">
			<ul>
				<li>
					<a href="">
						<img src="../IMAGE/500.png">
						<p>500个图形思维游戏</p>
						<span>RMB:25元</span>
					</a>
				</li>
				
				<li>
					<a href="">
						<img src="../IMAGE/GG.png">
						<p>狗狗这样教，主人好轻松</p>
						<span>RMB:25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/HYDSDNJ.png">
						<p>花艺大师到你家</p>
						<span>RMB:25元</span>
					</a>
				</li>
				<li>
					<a href="">
						<img src="../IMAGE/QTQJ.png">
						<p>千题千解：数独技巧1500题</p>
						<span>RMB:25元</span>
					</a>
				</li>
                <li>
					<a href="">
						<img src="../IMAGE/3000.png">
						<p>3000个侦探推理游戏</p>
						<span>RMB:25元</span>
				  </a>
			  </li>
				
				
				
			</ul>
			<div class="yScrollListbtn yScrollListbtnl"></div>
			<div class="yScrollListbtn yScrollListbtnr"></div>
		</div>
	</div>
</div>
<div style="float:left;margin-left:30px; font-size:15px;color:#0080FF;width:500px;length:15px;height:50px; ">
    <div>
    <br>
    <a href="../BLANK.html">✔未来教育. 全国计算机等级考试上机考试题库二级MS Office高级应用（2015年9月无纸化考试专用）</a></div>
    <div>
      <br>
      <p><a href="../BLANK.html">✔《天才在左 疯子在右 》作者耗时4年，深入医院精神科、公安部等诸数百名非常态人类直接接触，最终产生了震撼探讨！</a></p>
    </div>
    <div>
      <br>
      <p><a href="../BLANK.html">✔</a>《<a href="../BLANK.html">心理学与生活》被誉为普通心理学第一品牌图书 ，世界多所大学心理学系指定教材</a></p>
    </div>
    <div>
    <br>
    <a href="../BLANK.html">✔</a>《<a href="../BLANK.html">思考，快与慢》诺贝尔经济学奖得主丹尼尔·卡尼曼十年磨一剑之作，彻底颠覆你对思考的看法</a></div>
    <div>
    <br>
    <a href="../BLANK.html">✔</a>《<a href="../BLANK.html">中国传统风水智慧一本通》.权威专家修订典藏版，收录1800个最实用的风水常识，500余幅图片，给我们的生活以最权威的风水解决之道。</a></div>
    </div>


<div style="float:left;">

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<iframe src="Demo/demo.html" width="700" height="461" scrolling="no" frameborder="0" name="news"></iframe>
 <body style="background-color:#DDDDDD">

</body>
</html>