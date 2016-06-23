<%@ page language="java" import="java.util.*,star.mvc.modle.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

ArrayList<book> HotsBookList =(ArrayList<book>) session.getAttribute("HotsBookList");
ArrayList<book> SpeciaBookList = (ArrayList<book>) session.getAttribute("SpeciaBookList");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta charset="UTF-8">
	<title>starbooks</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" type="text/css" href="css/search.css" />
	<script type="text/javascript" src="js/jquery-1.4.2.main.js"></script>
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="css/javascript.fullPage.css" />
  <style type="text/css">
  .section2{
  	background-image:url(picture/444.png);
  }
  .section3{
  	background-image:url(picture/bookbg.jpg);
  }
 .section4{
  	background-image:url(picture/444.png);
  }
div,ul,li,dl,dt,dd{
	margin:0;
	padding:0;
}
ul,li,dl,dt,dd{
	list-style:none;
}
.demo{
	position:absolute;
	top:130px;
	left:30px;
	width:1260px;
}
.demo ul li{
	float:left;
	width:300px;
	margin-right:120px;
	position:relative;
}
.demo ul li img{
    border:none;
	position:relative;
	z-index:22;
}
.demo ul li a{
	width:300px;
    display:block;
	border:2px solid #ccc;
}
.demo ul li a:hover{
	border:2px solid #C03;
}
.demo ul li a span{
    position:absolute;

	z-index:50;
	bottom:2px;
	left:2px;
	width:300px;
	height:250px;
	filter:alpha(Opacity=50);-moz-opacity:0.7;opacity: 0.7;
	background:#000;
	color:#fff;
	line-height:40px;
	text-align:left;
	display:none;
}
.demo ul li a:hover span{
	display:block;
}
</style>
</head>

<body>
<div id="fullpage">
	<div class="section" id="section1">
	<img src="picture/home-bg1.png" width="1280" height="702">
	<div class="nav">
		<ul>
			<li><a class="tooltip tooltip-effect-1" href="index.jsp#page1">主页<span class="tooltip-content"><i class="fa fa-fw fa-home"></i></span></a></li>
			<li><a class="tooltip tooltip-effect-4" href="index.jsp#page2">图书分类<span class="tooltip-content"><i class="fa fa-fw fa-folder-open"></i></span></a></li>
			<li><a class="tooltip tooltip-effect-5" href="index.jsp#page3">图书搜索<span class="tooltip-content"><i class="fa fa-fw fa-binoculars"></i></span></a></li>
			<li><a class="tooltip tooltip-effect-2" href="index.jsp#page4">关于我们<span class="tooltip-content"><i class="fa fa-fw fa-user"></i></span></a></li>
		</ul>
		
	</div>
	<%if(session.getAttribute("login")==null){ %>
		<a href="login.jsp"><div class="denglu">登录/注册<li class="fa fa-fw fa-bank"></li></div></a>
	<%}else{ %>
		<a href="#"><div class="denglu"><%=session.getAttribute("login") %><li class="fa fa-fw fa-bank"></li></div></a>
		<a href="servlet_fist?zhuxiao=1"><div class="zhuxiao">注销</div></a>
	<%} %>
	
	</div>
	
	
	<div class="section section2" id="section2">
	<div>
	<img src="picture/donghua7.png">
	</div>

<table class="second" width="570" height="241" border="0" style="background-image:url()">
  <tr>
    <th scope="col" height="30"><div class="second-class"><br>图书分类<li class="fa fa-fw fa-desktop"></li></div></th>
  
  </tr>
  
  <tr>
  	<td>
  		<ul class="second-ul-1">
  		<br><br><br>
  			<a href="servlet_bshow?subtypeid=历史&xz=1"><li class="1">历史<li class="fa fa-fw fa-eye"></li></li></a>
  			<a href="servlet_bshow?subtypeid=现代科技&xz=1"><li class="1">现代科技<li class="fa fa-fw fa-rocket"></li></li></a>
  			<a href="servlet_bshow?subtypeid=名车鉴赏&xz=1"><li class="1">名车鉴赏<li class="fa fa-fw fa-bus"></li></li></a>
  			<a href="servlet_bshow?subtypeid=经济管理&xz=1"><li class="1">经济管理<li class="fa fa-fw fa-money"></li></li></a>
  			<a href="servlet_bshow?subtypeid=时尚潮流&xz=1"><li class="1">时尚潮流<li class="fa fa-fw fa-photo"></li></li></a>
  			<br><br><br>
  			<a href="servlet_bshow?subtypeid=教育&xz=1"><li class="1">教育<li class="fa fa-fw fa-graduation-cap"></li></li></a>
  			<a href="servlet_bshow?subtypeid=社会科学&xz=1"><li class="1">社会科学<li class="fa fa-fw fa-coffee"></li></li></a>
  			<a href="servlet_bshow?subtypeid=游戏风云&xz=1"><li class="1">游戏风云<li class="fa fa-fw fa-gamepad"></li></li></a>
  			<a href="servlet_bshow?subtypeid=科学自然&xz=1"><li class="1">科学自然<li class="fa fa-fw fa-leaf"></li></li></a>
  			<a href="servlet_bshow?subtypeid=程序专题&xz=1"><li class="1">程序专题<li class="fa fa-fw  fa-github"></li></li></a>
  			<br><br><br>
  			<a href="servlet_bshow?subtypeid=心理&xz=1"><li class="1">心理<li class="fa fa-fw fa-heart"></li></li></a>
  			<a href="servlet_bshow?subtypeid=运动保健&xz=1"><li class="1">运动保健<li class="fa fa-fw fa-futbol-o"></li></li></a>
  			<a href="servlet_bshow?subtypeid=宠物世界&xz=1"><li class="1">宠物世界<li class="fa fa-fw fa-paw"></li></li></a>
  			<a href="servlet_bshow?subtypeid=旅游地图&xz=1"><li class="1">旅游地图<li class="fa fa-fw fa-camera"></li></li></a>
  			<a href="servlet_bshow?subtypeid=爱情家庭&xz=1"><li class="1">爱情家庭<li class="fa fa-fw fa-group"></li></li></a>
  			
  		</ul>
  	</td>
  </tr>
</table>

<table class="third" width="280" height="700" border="0">
  <tr>
    <th scope="col" height="233"><a href="servlet_bshow?subtypeid=时尚&xz=2"><img src="picture/fasion2.jpg" width="280" height="233" class="third-img1"></a>
    <div class="third-img1-title">时尚专题</div></th>
  </tr>
  <tr>
    <td height="233"><a href="servlet_bshow?subtypeid=摄影&xz=2"><img src="picture/photo2.jpg" width="280" height="233" class="third-img2"></a>
    <div class="third-img2-title">摄影专题</div></td>
  </tr>
  <tr>
    <td height="220"><a href="servlet_bshow?subtypeid=名车杂志&xz=2"><img src="picture/car.jpg" width="280" height="220" class="third-img3"></a>
    <div class="third-img3-title">名车杂志</div></td>
  </tr>
  
</table>


<div class="fourth">
	<br>
	<%if(HotsBookList != null){ 
		String test = null;
		int i =1;
		for(book hots:HotsBookList){
			test = "test"+String.valueOf(i);
	%>	
			<a href="getAllMsgByBook?bookid=<%=hots.getBookid() %>"><figure class=<%=test %>>
			<img src=<%=hots.getPicture() %> width="170" height="170"> 
			<figcaption>
			<p>售价：<%=hots.getNowprice() %></p>
			<p>作者：<%=hots.getAuthor() %></p>
			<p>简介：<%=hots.getIntroduce() %></p>
			</figcaption>
			</figure></a>
	<% i++;}}else{ %>
		<img src="picture/tongji.jpg" width="170" height="170"> 
		<figcaption>
		<p>售价：暂无</p>
		</figcaption>
		</figure></a>
	<%} %>
		
</div>

<div class="fifth">
 
	
	<%if(SpeciaBookList != null){ 
		String fifth = null;
		int i = 1;
		for(book Specia:SpeciaBookList){
			fifth = "fifth-img"+String.valueOf(i);
	%>
		<a href="getAllMsgByBook?bookid=<%=Specia.getBookid() %>"><div class=<%=fifth %>><img src=<%=Specia.getPicture() %> width="170" height="170"></div></a>
	<%i++;}}else{%>
		<a href="#"><div class="fifth-img2"><img src="picture/dashengwu.jpg" width="170" height="170"></div></a>
	<%} %>
		
</div>

</div>

<div class="section section3" id="section3">
		<form action="servlet_search" name="search2" method="post" class="sc form">
			<input name= search type="text" placeholder="搜索您想要的书籍" class="input">
			<input name="search1" type="submit" value="开始搜索" class="submit">
		</form>
		
		<!-- 字体效果 -->
		<section class="rw-wrapper">
		<span class="span-title"> s t a r b o o k s 网上书城</span><br><br>
	<h2 class="rw-sentence">
		
		<div class="rw-words rw-words-1">
			<br><span>网上书城</span>
			<span>放心购买</span>
			<span>极致体验</span>
			<span>真诚服务</span>
			<span>用户至上</span>
			<span>别致阅读</span>
		</div>
		<div class="rw-words rw-words-2">
			<br><span>读书是和高尚的人谈话</span>
			<span>好的书籍，打动人心</span>
			<span>敞开心扉，用心阅读</span>
			<span>找到您的“黄金屋”</span>
			<span>明镜如水，开阔视野</span>
			<span>丰富阅历，易于人生</span>
		</div>
		<div class="rw-words rw-words-3">
			<br><span><img src="picture/bookbg1.jpg" width="500px" height="280px"></span>
			<span><img src="picture/bookbg2.jpg" width="500px" height="280px"></span>
			<span><img src="picture/bookbg3.jpg" width="500px" height="280px"></span>
			<span><img src="picture/bookbg4.jpeg" width="500px" height="280px"></span>
			<span><img src="picture/bookbg5.jpg" width="500px" height="280px"></span>
			<span><img src="picture/bookbg6.jpg" width="500px" height="280px"></span>
		</div>
		
	</h2>
</section>
 <script type="text/javascript" src="js/search.js"></script>
</div>


<div class="section section4" id="section4">
<div class="demo-title">starbooks 开发成员</div>
<div class="demo">
    <ul>
       <li>
         <a href="#">
           <img src="picture/people.jpg" width="300" height="250">
           <span>刘缘</span>
         </a>
       </li>
       <li>
         <a href="#">
           <img src="picture/people2.jpg" width="300" height="250">
           <span>毛灵</span>
         </a>
       </li>
       <li>
         <a href="#">
           <img src="picture/people3.jpg" width="300" height="250">
           <span>文盘东</span>
         </a>
       </li>
    </ul>
 </div>
 <!-- 管理员登录按钮 -->
 <a href="manger.jsp"><div class="mangerbtn">->管理员登录入口<-</div></a>
 <!-- 简介 -->
 <div class="jianjie">starbooks网上书城由三位成员开发。其主要功能有图书展示，图书购买和管理员系统组成。致力于为用户提供安全，快捷，方便的购书平台。</div>
 </div>

<script type="text/javascript" src="js/javascript.fullPage.js"></script>
<script type="text/javascript">
	fullpage.initialize('#fullpage', {
		'css3': true,
		//keyboardScrolling:true,
		
		anchors: ['page1', 'page2','page3','page4'],
		'loopBottom':true,
		navigation:true,
		menu:true,
		loopTop:true
	});

</script>

</body>
</html>